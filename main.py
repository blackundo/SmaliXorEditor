#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import os
import base64
import re
from PyQt6.QtWidgets import (QApplication, QMainWindow, QWidget, QVBoxLayout, 
                             QHBoxLayout, QLabel, QLineEdit, QPushButton, 
                             QTextEdit, QFileDialog, QCheckBox, QMessageBox,
                             QComboBox, QGroupBox, QTableWidget, QTableWidgetItem,
                             QHeaderView, QTabWidget, QSpinBox, QDialog, QFormLayout,
                             QGridLayout, QTextEdit)
from PyQt6.QtCore import Qt
from PyQt6.QtGui import QFont, QIcon
from qt_material import apply_stylesheet

class RangeEditDialog(QDialog):
    def __init__(self, start_index, end_index, current_string="", parent=None):
        super().__init__(parent)
        self.setWindowTitle(f"Edit Range {start_index}-{end_index}")
        self.setModal(True)
        self.setFixedSize(500, 400)
        
        layout = QVBoxLayout()
        self.setLayout(layout)
        
        # Range info
        range_label = QLabel(f"Editing Range: {start_index} to {end_index} ({end_index - start_index} values)")
        range_label.setFont(QFont("Arial", 10, QFont.Weight.Bold))
        layout.addWidget(range_label)
        
        # XOR Key input
        key_layout = QHBoxLayout()
        key_label = QLabel("XOR Key (hex):")
        self.key_input = QLineEdit()
        self.key_input.setPlaceholderText("0x174a")
        self.key_decimal_cb = QCheckBox("Decimal")
        
        key_layout.addWidget(key_label)
        key_layout.addWidget(self.key_input)
        key_layout.addWidget(self.key_decimal_cb)
        layout.addLayout(key_layout)
        
        # String input
        string_label = QLabel("Unicode String:")
        layout.addWidget(string_label)
        
        self.string_input = QTextEdit()
        self.string_input.setPlaceholderText("Nhập chuỗi Unicode cần encode...")
        self.string_input.setMaximumHeight(100)
        layout.addWidget(self.string_input)
        
        # Current decoded string
        current_label = QLabel("Current Decoded String:")
        layout.addWidget(current_label)
        
        self.current_text = QTextEdit()
        self.current_text.setPlainText(current_string)
        self.current_text.setMaximumHeight(80)
        self.current_text.setReadOnly(True)
        layout.addWidget(self.current_text)
        
        # Preview
        preview_label = QLabel("Preview (new XOR values):")
        layout.addWidget(preview_label)
        
        self.preview_text = QTextEdit()
        self.preview_text.setMaximumHeight(80)
        self.preview_text.setReadOnly(True)
        layout.addWidget(self.preview_text)
        
        # Buttons
        button_layout = QHBoxLayout()
        preview_btn = QPushButton("Preview")
        preview_btn.clicked.connect(self.preview_xor)
        
        ok_btn = QPushButton("Apply")
        cancel_btn = QPushButton("Cancel")
        
        preview_btn.clicked.connect(self.preview_xor)
        ok_btn.clicked.connect(self.accept)
        cancel_btn.clicked.connect(self.reject)
        
        button_layout.addWidget(preview_btn)
        button_layout.addWidget(ok_btn)
        button_layout.addWidget(cancel_btn)
        layout.addLayout(button_layout)
        
    def get_xor_key(self):
        """Lấy XOR key"""
        key_str = self.key_input.text().strip()
        if not key_str:
            return None
            
        try:
            if self.key_decimal_cb.isChecked():
                return int(key_str)
            else:
                if key_str.startswith('0x'):
                    return int(key_str[2:], 16)
                else:
                    return int(key_str, 16)
        except ValueError:
            return None
            
    def get_string(self):
        """Lấy chuỗi Unicode"""
        return self.string_input.toPlainText()
        
    def preview_xor(self):
        """Preview XOR values"""
        xor_key = self.get_xor_key()
        unicode_string = self.get_string()
        
        if xor_key is None:
            QMessageBox.warning(self, "Lỗi", "Vui lòng nhập XOR key hợp lệ!")
            return
            
        if not unicode_string:
            QMessageBox.warning(self, "Lỗi", "Vui lòng nhập chuỗi Unicode!")
            return
            
        try:
            # Chuyển đổi string thành XOR values
            xor_values = []
            for char in unicode_string:
                char_code = ord(char)
                xor_value = char_code ^ xor_key
                xor_values.append(f"0x{xor_value:04x}")
                
            preview_text = " ".join(xor_values)
            self.preview_text.setPlainText(preview_text)
            
        except Exception as e:
            QMessageBox.critical(self, "Lỗi", f"Không thể tạo preview: {e}")

class XORConverterApp(QMainWindow):
    def __init__(self):
        super().__init__()
        self.current_array_data = []  # Lưu array-data hiện tại
        self.current_smali_file = ""  # Lưu đường dẫn file smali
        self.initUI()
        
    def initUI(self):
        """Khởi tạo giao diện"""
        self.setWindowTitle("XOR Converter for Smali")
        self.setGeometry(100, 100, 1400, 900)
        
        # Widget chính
        central_widget = QWidget()
        self.setCentralWidget(central_widget)
        
        # Layout chính
        layout = QVBoxLayout()
        central_widget.setLayout(layout)
        
        # Tiêu đề
        title_label = QLabel("XOR Converter for Smali Array-Data")
        title_label.setFont(QFont("Arial", 16, QFont.Weight.Bold))
        title_label.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title_label)
        
        # Tab widget
        self.tab_widget = QTabWidget()
        layout.addWidget(self.tab_widget)
        
        # Tab 1: Basic Converter
        self.create_basic_tab()
        
        # Tab 2: Advanced Array Editor
        self.create_advanced_tab()
        
        # Status bar
        self.statusBar().showMessage("Sẵn sàng")
        
    def create_basic_tab(self):
        """Tạo tab cơ bản"""
        basic_widget = QWidget()
        layout = QVBoxLayout()
        basic_widget.setLayout(layout)
        
        # Group cho file input
        file_group = QGroupBox("Input Source")
        file_layout = QVBoxLayout()
        file_group.setLayout(file_layout)
        
        # File type selection
        file_type_layout = QHBoxLayout()
        file_type_label = QLabel("Input Type:")
        self.file_type_combo = QComboBox()
        self.file_type_combo.addItems(["Array-Data TXT File", "Smali File"])
        self.file_type_combo.currentTextChanged.connect(self.on_file_type_changed)
        
        file_type_layout.addWidget(file_type_label)
        file_type_layout.addWidget(self.file_type_combo)
        file_layout.addLayout(file_type_layout)
        
        # File input
        self.file_input_layout = QHBoxLayout()
        file_label = QLabel("File:")
        self.file_input = QLineEdit()
        self.file_input.setPlaceholderText("Chọn file...")
        self.browse_btn = QPushButton("Browse")
        self.browse_btn.clicked.connect(self.browse_file)
        
        self.file_input_layout.addWidget(file_label)
        self.file_input_layout.addWidget(self.file_input)
        self.file_input_layout.addWidget(self.browse_btn)
        file_layout.addLayout(self.file_input_layout)
        
        # Extract button (cho smali file)
        self.extract_btn = QPushButton("Extract Array-Data")
        self.extract_btn.clicked.connect(self.extract_array_data)
        self.extract_btn.setVisible(False)
        file_layout.addWidget(self.extract_btn)
        
        layout.addWidget(file_group)
        
        # Group cho parameters
        param_group = QGroupBox("Parameters")
        param_layout = QVBoxLayout()
        param_group.setLayout(param_layout)
        
        # Start Index
        start_layout = QHBoxLayout()
        start_label = QLabel("Start Index:")
        self.start_input = QLineEdit()
        self.start_input.setPlaceholderText("0 hoặc 0x0")
        self.start_decimal_cb = QCheckBox("Decimal")
        
        start_layout.addWidget(start_label)
        start_layout.addWidget(self.start_input)
        start_layout.addWidget(self.start_decimal_cb)
        param_layout.addLayout(start_layout)
        
        # End Index
        end_layout = QHBoxLayout()
        end_label = QLabel("End Index:")
        self.end_input = QLineEdit()
        self.end_input.setPlaceholderText("4e0a hoặc 0x4e0a")
        self.end_decimal_cb = QCheckBox("Decimal")
        
        end_layout.addWidget(end_label)
        end_layout.addWidget(self.end_input)
        end_layout.addWidget(self.end_decimal_cb)
        param_layout.addLayout(end_layout)
        
        # XOR Key
        key_layout = QHBoxLayout()
        key_label = QLabel("XOR Key:")
        self.key_input = QLineEdit()
        self.key_input.setPlaceholderText("5072 hoặc 0x5072")
        self.key_decimal_cb = QCheckBox("Decimal")
        
        key_layout.addWidget(key_label)
        key_layout.addWidget(self.key_input)
        key_layout.addWidget(self.key_decimal_cb)
        param_layout.addLayout(key_layout)
        
        layout.addWidget(param_group)
        
        # Convert button
        convert_btn = QPushButton("Convert")
        convert_btn.setFont(QFont("Arial", 12, QFont.Weight.Bold))
        convert_btn.clicked.connect(self.convert)
        layout.addWidget(convert_btn)
        
        # Result area
        result_label = QLabel("Base64 Result:")
        layout.addWidget(result_label)
        
        self.result_text = QTextEdit()
        self.result_text.setFont(QFont("Courier", 10))
        self.result_text.setPlaceholderText("Kết quả base64 sẽ hiển thị ở đây...")
        layout.addWidget(self.result_text)
        
        # Copy button
        copy_btn = QPushButton("Copy Result")
        copy_btn.clicked.connect(self.copy_result)
        layout.addWidget(copy_btn)
        
        self.tab_widget.addTab(basic_widget, "Basic Converter")
        
    def create_advanced_tab(self):
        """Tạo tab nâng cao"""
        advanced_widget = QWidget()
        layout = QVBoxLayout()
        advanced_widget.setLayout(layout)
        
        # Range Editor
        range_group = QGroupBox("Range Editor")
        range_layout = QGridLayout()
        range_group.setLayout(range_layout)
        
        # Start Index
        range_layout.addWidget(QLabel("Start Index:"), 0, 0)
        self.range_start_input = QLineEdit()
        self.range_start_input.setPlaceholderText("0 hoặc 0x0")
        self.range_start_decimal_cb = QCheckBox("Decimal")
        range_layout.addWidget(self.range_start_input, 0, 1)
        range_layout.addWidget(self.range_start_decimal_cb, 0, 2)
        
        # End Index
        range_layout.addWidget(QLabel("End Index:"), 0, 3)
        self.range_end_input = QLineEdit()
        self.range_end_input.setPlaceholderText("10 hoặc 0xa")
        self.range_end_decimal_cb = QCheckBox("Decimal")
        range_layout.addWidget(self.range_end_input, 0, 4)
        range_layout.addWidget(self.range_end_decimal_cb, 0, 5)
        
        # XOR Key
        range_layout.addWidget(QLabel("XOR Key:"), 1, 0)
        self.range_key_input = QLineEdit()
        self.range_key_input.setPlaceholderText("0x174a")
        self.range_key_decimal_cb = QCheckBox("Decimal")
        range_layout.addWidget(self.range_key_input, 1, 1)
        range_layout.addWidget(self.range_key_decimal_cb, 1, 2)
        
        # Buttons
        self.decode_range_btn = QPushButton("Decode Range")
        self.decode_range_btn.clicked.connect(self.decode_range)
        range_layout.addWidget(self.decode_range_btn, 1, 3)
        
        self.edit_range_btn = QPushButton("Edit Range")
        self.edit_range_btn.clicked.connect(self.edit_range)
        range_layout.addWidget(self.edit_range_btn, 1, 4)
        
        layout.addWidget(range_group)
        
        # Range Result
        range_result_group = QGroupBox("Range Result")
        range_result_layout = QVBoxLayout()
        range_result_group.setLayout(range_result_layout)
        
        self.range_result_text = QTextEdit()
        self.range_result_text.setFont(QFont("Courier", 10))
        self.range_result_text.setPlaceholderText("Kết quả decode range sẽ hiển thị ở đây...")
        range_result_layout.addWidget(self.range_result_text)
        
        layout.addWidget(range_result_group)
        
        # Array data table
        table_group = QGroupBox("Array Data Editor")
        table_layout = QVBoxLayout()
        table_group.setLayout(table_layout)
        
        # Table controls
        controls_layout = QHBoxLayout()
        
        self.refresh_btn = QPushButton("Refresh Table")
        self.refresh_btn.clicked.connect(self.refresh_table)
        
        self.save_changes_btn = QPushButton("Save Changes")
        self.save_changes_btn.clicked.connect(self.save_changes)
        
        self.export_btn = QPushButton("Export Modified")
        self.export_btn.clicked.connect(self.export_modified)
        
        controls_layout.addWidget(self.refresh_btn)
        controls_layout.addWidget(self.save_changes_btn)
        controls_layout.addWidget(self.export_btn)
        table_layout.addLayout(controls_layout)
        
        # Table
        self.array_table = QTableWidget()
        self.array_table.setColumnCount(4)
        self.array_table.setHorizontalHeaderLabels(["Index", "Hex Value", "Decimal", "Decoded Char"])
        self.array_table.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.ResizeToContents)
        table_layout.addWidget(self.array_table)
        
        layout.addWidget(table_group)
        
        self.tab_widget.addTab(advanced_widget, "Advanced Editor")
        
    def on_file_type_changed(self, text):
        """Xử lý khi thay đổi loại file"""
        if text == "Smali File":
            self.file_input.setPlaceholderText("Chọn file smali...")
            self.extract_btn.setVisible(True)
        else:
            self.file_input.setPlaceholderText("Chọn file txt chứa array-data...")
            self.extract_btn.setVisible(False)
            
    def browse_file(self):
        """Chọn file"""
        file_type = self.file_type_combo.currentText()
        
        if file_type == "Smali File":
            file_path, _ = QFileDialog.getOpenFileName(
                self, "Chọn file smali", "", "Smali files (*.smali);;All files (*)"
            )
        else:
            file_path, _ = QFileDialog.getOpenFileName(
                self, "Chọn file txt", "", "Text files (*.txt);;All files (*)"
            )
            
        if file_path:
            self.file_input.setText(file_path)
            
    def extract_array_data_from_smali(self, smali_file_path):
        """Trích xuất array-data từ file smali"""
        try:
            with open(smali_file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # Tìm và trích xuất array-data (bao gồm cả giá trị âm)
            pattern = r'-?0x[0-9a-fA-F]+s'
            hex_values = re.findall(pattern, content)
            
            if not hex_values:
                raise ValueError(f"Không tìm thấy array-data trong file: {smali_file_path}")
            
            print(f"Tìm thấy {len(hex_values)} giá trị hex trong {smali_file_path}")
            return hex_values
            
        except Exception as e:
            raise Exception(f"Lỗi khi đọc file {smali_file_path}: {e}")
            
    def extract_array_data(self):
        """Trích xuất array-data và lưu vào memory"""
        try:
            file_path = self.file_input.text().strip()
            if not file_path or not os.path.exists(file_path):
                QMessageBox.warning(self, "Lỗi", "Vui lòng chọn file smali hợp lệ!")
                return
                
            self.statusBar().showMessage("Đang trích xuất array-data...")
            hex_values = self.extract_array_data_from_smali(file_path)
            
            # Lưu vào memory
            self.current_array_data = hex_values
            self.current_smali_file = file_path
            
            # Refresh table
            self.refresh_table()
            
            # Hiển thị thông tin
            QMessageBox.information(self, "Thành công", 
                                  f"Đã trích xuất {len(hex_values)} giá trị array-data!\n"
                                  f"10 giá trị đầu: {hex_values[:10]}\n"
                                  f"10 giá trị cuối: {hex_values[-10:]}")
            
            self.statusBar().showMessage(f"Đã load {len(hex_values)} giá trị array-data")
            
        except Exception as e:
            QMessageBox.critical(self, "Lỗi", str(e))
            self.statusBar().showMessage("Lỗi!")
            
    def decode_range(self):
        """Decode range với XOR key"""
        try:
            if not self.current_array_data:
                QMessageBox.warning(self, "Lỗi", "Chưa có array-data! Vui lòng extract trước.")
                return
                
            # Parse range
            start_str = self.range_start_input.text().strip()
            end_str = self.range_end_input.text().strip()
            key_str = self.range_key_input.text().strip()
            
            if not start_str or not end_str or not key_str:
                QMessageBox.warning(self, "Lỗi", "Vui lòng nhập đầy đủ Start, End và XOR Key!")
                return
                
            # Parse start index
            if self.range_start_decimal_cb.isChecked():
                start_index = int(start_str)
            else:
                if start_str.startswith('0x'):
                    start_index = int(start_str[2:], 16)
                else:
                    start_index = int(start_str, 16)
                    
            # Parse end index
            if self.range_end_decimal_cb.isChecked():
                end_index = int(end_str)
            else:
                if end_str.startswith('0x'):
                    end_index = int(end_str[2:], 16)
                else:
                    end_index = int(end_str, 16)
            
            # Parse XOR key
            if self.range_key_decimal_cb.isChecked():
                xor_key = int(key_str)
            else:
                if key_str.startswith('0x'):
                    xor_key = int(key_str[2:], 16)
                else:
                    xor_key = int(key_str, 16)
                
            # Decode range
            result = ""
            hex_ints = []
            
            for i in range(start_index, min(end_index, len(self.current_array_data))):
                hex_str = self.current_array_data[i]
                if hex_str.startswith('-'):
                    hex_val = -int(hex_str[3:-1], 16)
                else:
                    hex_val = int(hex_str[:-1], 16)
                    
                decoded_val = hex_val ^ xor_key
                char = chr(decoded_val)
                result += char
                hex_ints.append(hex_val)
                
            # Hiển thị kết quả
            range_info = f"Range {start_index}-{end_index} với XOR key 0x{xor_key:04x}:\n"
            range_info += f"Decoded string: {result}\n"
            range_info += f"Hex values: {' '.join([f'0x{x:04x}' for x in hex_ints])}\n"
            range_info += f"Length: {len(result)} characters"
            
            self.range_result_text.setPlainText(range_info)
            self.statusBar().showMessage(f"Đã decode range {start_index}-{end_index}")
            
        except Exception as e:
            QMessageBox.critical(self, "Lỗi", str(e))
            
    def edit_range(self):
        """Edit range với string mới"""
        try:
            if not self.current_array_data:
                QMessageBox.warning(self, "Lỗi", "Chưa có array-data! Vui lòng extract trước.")
                return
                
            # Parse range
            start_str = self.range_start_input.text().strip()
            end_str = self.range_end_input.text().strip()
            key_str = self.range_key_input.text().strip()
            
            if not start_str or not end_str or not key_str:
                QMessageBox.warning(self, "Lỗi", "Vui lòng nhập Start, End Index và XOR Key!")
                return
                
            # Parse start index
            if self.range_start_decimal_cb.isChecked():
                start_index = int(start_str)
            else:
                if start_str.startswith('0x'):
                    start_index = int(start_str[2:], 16)
                else:
                    start_index = int(start_str, 16)
                    
            # Parse end index
            if self.range_end_decimal_cb.isChecked():
                end_index = int(end_str)
            else:
                if end_str.startswith('0x'):
                    end_index = int(end_str[2:], 16)
                else:
                    end_index = int(end_str, 16)
            
            # Parse XOR key
            if self.range_key_decimal_cb.isChecked():
                xor_key = int(key_str)
            else:
                if key_str.startswith('0x'):
                    xor_key = int(key_str[2:], 16)
                else:
                    xor_key = int(key_str, 16)
            
            # Decode current range để hiển thị
            current_string = ""
            if start_index < len(self.current_array_data) and end_index <= len(self.current_array_data):
                for i in range(start_index, end_index):
                    hex_str = self.current_array_data[i]
                    if hex_str.startswith('-'):
                        hex_val = -int(hex_str[3:-1], 16)
                    else:
                        hex_val = int(hex_str[:-1], 16)
                    # Decode với XOR key
                    decoded_val = hex_val ^ xor_key
                    current_string += chr(decoded_val)
            
            # Mở dialog edit
            dialog = RangeEditDialog(start_index, end_index, current_string, self)
            if dialog.exec() == QDialog.DialogCode.Accepted:
                new_xor_key = dialog.get_xor_key()
                new_string = dialog.get_string()
                
                if new_xor_key is None or not new_string:
                    QMessageBox.warning(self, "Lỗi", "Vui lòng nhập XOR key và string hợp lệ!")
                    return
                    
                # Chuyển đổi string thành XOR values
                xor_values = []
                for char in new_string:
                    char_code = ord(char)
                    xor_value = char_code ^ new_xor_key
                    xor_values.append(f"0x{xor_value:04x}s")
                
                # Update array data
                for i, xor_val in enumerate(xor_values):
                    if start_index + i < len(self.current_array_data):
                        self.current_array_data[start_index + i] = xor_val
                
                # Refresh table
                self.refresh_table()
                
                QMessageBox.information(self, "Thành công", 
                                      f"Đã update range {start_index}-{end_index} với {len(new_string)} ký tự!")
                
        except Exception as e:
            QMessageBox.critical(self, "Lỗi", str(e))
            
    def refresh_table(self):
        """Refresh bảng array data"""
        if not self.current_array_data:
            return
            
        self.array_table.setRowCount(len(self.current_array_data))
        
        for i, hex_str in enumerate(self.current_array_data):
            # Index
            index_item = QTableWidgetItem(str(i))
            self.array_table.setItem(i, 0, index_item)
            
            # Hex value
            hex_item = QTableWidgetItem(hex_str)
            self.array_table.setItem(i, 1, hex_item)
            
            # Decimal value
            try:
                if hex_str.startswith('-'):
                    # Xử lý giá trị âm
                    decimal_val = -int(hex_str[3:-1], 16)  # Bỏ qua '-0x' và 's'
                else:
                    decimal_val = int(hex_str[:-1], 16)  # Bỏ qua 's'
                decimal_item = QTableWidgetItem(str(decimal_val))
            except:
                decimal_item = QTableWidgetItem("Error")
            self.array_table.setItem(i, 2, decimal_item)
            
            # Decoded char (với XOR key mặc định)
            try:
                if hex_str.startswith('-'):
                    hex_val = -int(hex_str[3:-1], 16)
                else:
                    hex_val = int(hex_str[:-1], 16)
                
                # Thử với một số XOR key phổ biến
                decoded_chars = []
                for test_key in [0x174a, 0x5072, 0x0000]:
                    decoded_val = hex_val ^ test_key
                    if 32 <= decoded_val <= 126:  # Printable ASCII
                        decoded_chars.append(chr(decoded_val))
                    else:
                        decoded_chars.append('?')
                
                char_item = QTableWidgetItem(' | '.join(decoded_chars))
            except:
                char_item = QTableWidgetItem("Error")
            self.array_table.setItem(i, 3, char_item)
            
    def save_changes(self):
        """Lưu thay đổi vào file smali"""
        if not self.current_smali_file:
            QMessageBox.warning(self, "Lỗi", "Chưa có file smali được load!")
            return
            
        try:
            # Đọc file gốc
            with open(self.current_smali_file, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # Tạo backup
            backup_file = self.current_smali_file + '.backup'
            with open(backup_file, 'w', encoding='utf-8') as f:
                f.write(content)
            
            # Thay thế array-data
            pattern = r'-?0x[0-9a-fA-F]+s'
            new_content = re.sub(pattern, lambda m: self.current_array_data.pop(0), content)
            
            # Lưu file mới
            with open(self.current_smali_file, 'w', encoding='utf-8') as f:
                f.write(new_content)
            
            QMessageBox.information(self, "Thành công", 
                                  f"Đã lưu thay đổi vào {self.current_smali_file}\n"
                                  f"Backup được lưu tại: {backup_file}")
            
        except Exception as e:
            QMessageBox.critical(self, "Lỗi", f"Không thể lưu thay đổi: {e}")
            
    def export_modified(self):
        """Export array-data đã modify"""
        if not self.current_array_data:
            QMessageBox.warning(self, "Lỗi", "Chưa có array-data!")
            return
            
        file_path, _ = QFileDialog.getSaveFileName(
            self, "Export Modified Array-Data", "", "Text files (*.txt)"
        )
        
        if file_path:
            try:
                with open(file_path, 'w', encoding='utf-8') as f:
                    for hex_val in self.current_array_data:
                        f.write(hex_val + '\n')
                
                QMessageBox.information(self, "Thành công", f"Đã export đến: {file_path}")
                
            except Exception as e:
                QMessageBox.critical(self, "Lỗi", f"Không thể export: {e}")
            
    def parse_hex_or_decimal(self, value_str, is_decimal=False):
        """Parse giá trị hex hoặc decimal"""
        try:
            if is_decimal:
                return int(value_str)
            else:
                # Xử lý hex format
                if value_str.startswith('0x'):
                    return int(value_str[2:], 16)
                else:
                    return int(value_str, 16)
        except ValueError:
            raise ValueError(f"Giá trị không hợp lệ: {value_str}")
            
    def decode_xor_from_txt(self, file_path, xor_key, start_index, end_index):
        """Giải mã XOR từ file txt"""
        try:
            # Đọc file txt
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # Trích xuất các giá trị hex
            pattern = r'-?0x[0-9a-fA-F]+s'
            hex_values = re.findall(pattern, content)
            
            if not hex_values:
                raise ValueError("Không tìm thấy array-data trong file!")
            
            # Chuyển đổi từ string sang int
            hex_ints = []
            for hex_str in hex_values:
                if hex_str.startswith('-'):
                    hex_int = -int(hex_str[3:-1], 16)
                else:
                    hex_int = int(hex_str[:-1], 16)
                hex_ints.append(hex_int)
            
            # Chọn range
            selected_values = hex_ints[start_index:end_index]
            
            # Giải mã XOR
            result = ""
            for hex_val in selected_values:
                decoded_val = hex_val ^ xor_key
                char = chr(decoded_val)
                result += char
            
            return result
            
        except Exception as e:
            raise Exception(f"Lỗi khi đọc file: {e}")
            
    def decode_xor_from_memory(self, xor_key, start_index, end_index):
        """Giải mã XOR từ array-data trong memory"""
        try:
            if not self.current_array_data:
                raise ValueError("Chưa có array-data! Vui lòng extract từ file smali trước.")
            
            # Chuyển đổi từ string sang int
            hex_ints = []
            for hex_str in self.current_array_data:
                if hex_str.startswith('-'):
                    hex_int = -int(hex_str[3:-1], 16)
                else:
                    hex_int = int(hex_str[:-1], 16)
                hex_ints.append(hex_int)
            
            # Chọn range
            selected_values = hex_ints[start_index:end_index]
            
            # Giải mã XOR
            result = ""
            for hex_val in selected_values:
                decoded_val = hex_val ^ xor_key
                char = chr(decoded_val)
                result += char
            
            return result
            
        except Exception as e:
            raise Exception(f"Lỗi khi giải mã: {e}")
            
    def convert(self):
        """Thực hiện chuyển đổi"""
        try:
            file_type = self.file_type_combo.currentText()
            
            # Parse parameters
            start_str = self.start_input.text().strip()
            if not start_str:
                QMessageBox.warning(self, "Lỗi", "Vui lòng nhập Start Index!")
                return
            start_index = self.parse_hex_or_decimal(start_str, self.start_decimal_cb.isChecked())
            
            end_str = self.end_input.text().strip()
            if not end_str:
                QMessageBox.warning(self, "Lỗi", "Vui lòng nhập End Index!")
                return
            end_index = self.parse_hex_or_decimal(end_str, self.end_decimal_cb.isChecked())
            
            key_str = self.key_input.text().strip()
            if not key_str:
                QMessageBox.warning(self, "Lỗi", "Vui lòng nhập XOR Key!")
                return
            xor_key = self.parse_hex_or_decimal(key_str, self.key_decimal_cb.isChecked())
            
            # Thực hiện giải mã
            self.statusBar().showMessage("Đang giải mã...")
            
            if file_type == "Smali File":
                # Sử dụng array-data từ memory
                result = self.decode_xor_from_memory(xor_key, start_index, end_index)
            else:
                # Đọc từ file txt
                file_path = self.file_input.text().strip()
                if not file_path or not os.path.exists(file_path):
                    QMessageBox.warning(self, "Lỗi", "Vui lòng chọn file txt hợp lệ!")
                    return
                result = self.decode_xor_from_txt(file_path, xor_key, start_index, end_index)
            
            # Hiển thị kết quả
            self.result_text.setText(result)
            self.statusBar().showMessage(f"Hoàn thành! Độ dài: {len(result)} ký tự")
            
        except Exception as e:
            QMessageBox.critical(self, "Lỗi", str(e))
            self.statusBar().showMessage("Lỗi!")
            
    def copy_result(self):
        """Copy kết quả vào clipboard"""
        result = self.result_text.toPlainText()
        if result:
            clipboard = QApplication.clipboard()
            clipboard.setText(result)
            self.statusBar().showMessage("Đã copy kết quả!")
        else:
            QMessageBox.information(self, "Thông báo", "Không có kết quả để copy!")

def main():
    app = QApplication(sys.argv)
    app.setApplicationName("XOR Converter")
    
    # Áp dụng Material Design theme
    apply_stylesheet(app, theme='dark_teal.xml')
    
    # Tạo và hiển thị window
    window = XORConverterApp()
    window.show()
    
    sys.exit(app.exec())

if __name__ == "__main__":
    main() 