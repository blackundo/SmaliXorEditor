# XOR Converter for Smali

Tool GUI để decode/encode XOR array-data trong file Smali với giao diện Material Design đẹp mắt.

## Tính năng

### 🎨 Giao diện Material Design
- Sử dụng thư viện `qt-material` cho giao diện hiện đại
- Theme `dark_teal.xml` với màu sắc đẹp mắt
- Responsive design với layout tối ưu

### 🔧 Basic Converter
- **Input Source**: Chọn file TXT hoặc Smali
- **Parameters**: Start/End Index và XOR Key với hỗ trợ hex/decimal
- **Result**: Hiển thị Base64 string với button copy

### ⚡ Advanced Editor
- **Range Editor**: Decode/Edit theo range với key riêng
- **Array Data Table**: Hiển thị tất cả array-data với preview
- **Edit Range**: Chỉnh sửa range với string mới
- **Save Changes**: Lưu thay đổi vào file smali với backup

## Cài đặt

### 1. Cài đặt dependencies
```bash
pip install -r requirements.txt
```

### 2. Chạy ứng dụng
```bash
python main.py
```

## Sử dụng

### Basic Converter

#### Bước 1: Chọn Input Source
```
Input Type: [Smali File] hoặc [Array-Data TXT File]
File: [Browse] → Chọn file
```

#### Bước 2: Extract Array-Data (nếu chọn Smali File)
```
→ Click "Extract Array-Data"
→ Hiển thị thông tin: "Đã trích xuất X giá trị array-data"
```

#### Bước 3: Nhập Parameters
```
Start Index: 0 hoặc 0x0 [Decimal]
End Index: 4e0a hoặc 0x4e0a [Decimal]  
XOR Key: 5072 hoặc 0x5072 [Decimal]
```

#### Bước 4: Convert
```
→ Click "Convert"
→ Hiển thị Base64 string trong Result area
→ Click "Copy Result" để copy
```

### Advanced Editor

#### Bước 1: Decode Range
```
Start Index: 0x0 [Decimal]
End Index: 0xa [Decimal]
XOR Key: 0x174a [Decimal]
→ Click "Decode Range"
→ Hiển thị kết quả trong "Range Result"
```

#### Bước 2: Edit Range
```
→ Click "Edit Range"
→ Dialog hiển thị:
  - Current Decoded String: "Hello World"
  - XOR Key: 0x5072
  - Unicode String: "New String"
  - Preview: 0x4e0a 0x4e0a ...
→ Click "Apply"
```

#### Bước 3: Save Changes
```
→ Click "Save Changes"
→ Tự động tạo backup: file.smali.backup
→ Lưu thay đổi vào file smali gốc
```

## Ví dụ với am.smali

### Decode range 0-5:
```
Start: 0x0, End: 0x5, Key: 0x174a
→ Decoded: "Hello"
```

### Edit range 0-5:
```
Current: "Hello" (đã decode đúng)
New XOR Key: 0x5072
New String: "World"
→ Preview: 0x4e0a 0x4e0a 0x4e0a 0x4e0a 0x4e0a
→ Apply → Save Changes
```

## Giao diện

### Material Design Theme
```
┌─────────────────────────────────────────────────┐
│ XOR Converter for Smali Array-Data             │
├─────────────────────────────────────────────────┤
│ [Basic Converter] [Advanced Editor]            │
├─────────────────────────────────────────────────┤
│ Input Source:                                  │
│ [Smali File ▼] [Browse] [Extract Array-Data]  │
├─────────────────────────────────────────────────┤
│ Parameters:                                     │
│ Start: [0x0] [Decimal] End: [0xa] [Decimal]   │
│ Key: [0x174a] [Decimal] [Convert]             │
├─────────────────────────────────────────────────┤
│ Result: [Base64 string...] [Copy Result]       │
└─────────────────────────────────────────────────┘
```

### Advanced Editor
```
┌─────────────────────────────────────────────────┐
│ Range Editor:                                  │
│ Start: [0x0] [Decimal] End: [0xa] [Decimal]   │
│ Key: [0x174a] [Decimal] [Decode] [Edit]       │
├─────────────────────────────────────────────────┤
│ Range Result:                                  │
│ Range 0-10 với XOR key 0x174a:               │
│ Decoded string: Hello World                   │
├─────────────────────────────────────────────────┤
│ Array Data Editor:                             │
│ [Refresh] [Save Changes] [Export]             │
│ ┌─────────────────────────────────────────────┐ │
│ │ Index | Hex Value | Decimal | Decoded Char │ │
│ │ 0     | 0x174as  | 5978    | H            │ │
│ │ 1     | 0x1758s  | 5976    | e            │ │
│ └─────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────┘
```

## Tính năng nổi bật

- ✅ **Material Design**: Giao diện hiện đại với qt-material
- ✅ **Range-based Editing**: Chỉnh sửa theo range cụ thể
- ✅ **Multiple XOR Keys**: Mỗi range có key riêng
- ✅ **String to XOR**: Chuyển đổi string thành XOR values
- ✅ **Preview Function**: Xem trước trước khi apply
- ✅ **Safe Backup**: Tự động backup trước khi save
- ✅ **Hex/Decimal Support**: Hỗ trợ cả hex và decimal input
- ✅ **Visual Feedback**: Hiển thị kết quả rõ ràng

## Dependencies

```
PyQt6>=6.4.0
qt-material>=2.14
```

## Lưu ý

- Tool tự động tạo backup trước khi save changes
- Hỗ trợ negative hex values (ví dụ: -0x2fads)
- Preview function giúp kiểm tra XOR values trước khi apply
- Export function để lưu array-data đã modify ra file txt 