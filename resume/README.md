# CV Template - Typst & PDF Version

## 📋 Files Included

1. **Nguyen_Manh_Hung_CV.pdf** - Ready-to-use PDF version (generated với reportlab)
2. **resume.typ** - Typst source code (editable trong VSCode)
3. **generate_cv.py** - Python script để generate PDF từ code

## 🚀 Typst Setup trong VSCode

### 1. Install Typst Compiler

**MacOS:**
```bash
brew install typst
```

**Windows (với Chocolatey):**
```bash
choco install typst
```

**Linux:**
```bash
# Download từ GitHub releases
wget https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz
tar -xf typst-x86_64-unknown-linux-musl.tar.xz
sudo mv typst-*/typst /usr/local/bin/
```

### 2. Install VSCode Extension

Mở VSCode và install extension: **Tinymist Typst**

Features:
- ✅ Live preview (auto-update khi save)
- ✅ Syntax highlighting
- ✅ Auto-completion
- ✅ Error diagnostics
- ✅ Export to PDF

### 3. Edit CV

1. Mở `resume.typ` trong VSCode
2. Edit content như markdown
3. Save file → preview tự động update
4. Export PDF: Ctrl+Shift+P → "Typst: Export PDF"

## 🎨 Customization Tips

### Colors
```typst
#let primary = rgb("#2563eb")      // Đổi màu chính
#let secondary = rgb("#475569")    // Đổi màu phụ
#let accent = rgb("#0f172a")       // Đổi màu accent
```

### Fonts
```typst
#set text(
  font: "New Computer Modern",  // Đổi font chữ
  size: 10pt,
)
```

### Layout
```typst
// Two-column layout
#grid(
  columns: (65%, 35%),  // Điều chỉnh tỷ lệ cột
  column-gutter: 1.2em,
  ...
)
```

## 📝 Content Structure

### Left Column (65%)
- Professional Summary
- Work Experience
- Projects

### Right Column (35%)
- Technical Skills
- Education
- Awards
- Interests

## 🔄 Quick Commands

```bash
# Compile Typst to PDF
typst compile resume.typ

# Watch mode (auto-compile on save)
typst watch resume.typ

# Compile với custom output name
typst compile resume.typ output.pdf
```

## 💡 Typst vs LaTeX

| Feature | Typst | LaTeX |
|---------|-------|-------|
| Compile Speed | <1s ⚡ | 5-10s |
| Syntax | Clean, như markdown | Verbose |
| Error Messages | Clear | Cryptic |
| Learning Curve | Easy | Steep |
| Ecosystem | Growing | Mature |

## 🎯 Skills Updated vs CV Cũ

### Added (Nokia Experience):
- ✅ Java, Spring Boot (main stack)
- ✅ Robot Framework (automation testing)
- ✅ Maven, Kubernetes
- ✅ Jenkins CI/CD
- ✅ XGBoost, n8n workflow
- ✅ Angular frontend

### Highlighted:
- 🎖️ Meta Hacker Cup Round 2 (Top 12% globally)
- 🏆 ICPC achievements
- 💼 Enterprise Java development
- 🧪 Test automation expertise

## 📚 Resources

- Typst Documentation: https://typst.app/docs
- Typst Universe (templates): https://typst.app/universe
- VSCode Extension: https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist

## 🤝 Tips

1. **Version Control**: Typst files are text-based → Git-friendly
2. **ATS-Friendly**: Structure vẫn scannable bởi ATS systems
3. **Professional**: Clean typography, modern layout
4. **Maintainable**: Dễ update content, không lo lỗi format

---

Made with ❤️ using Typst and Python
