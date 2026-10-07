# 📖 Graded Vocab Reader & Word Add-in

Hệ thống đọc tiếng Anh phân tầng thông minh theo nguyên lý **Comprehensible Input (i + 1)** của GS. Stephen Krashen, tích hợp phát âm đa giọng chuẩn bản ngữ, tra từ điển ngữ cảnh và tương tác hai chiều với **Microsoft Word**.

---

## 🌐 1. Học trực tiếp trên Điện thoại & Trình duyệt (GitHub Pages)

👉 **Đường dẫn học trực tiếp:** [https://kimducanh27-cpu.github.io/-graded-reader/](https://kimducanh27-cpu.github.io/-graded-reader/)

- **Trên điện thoại:** Mở link trên bằng Safari (iOS) hoặc Chrome (Android). Có thể chọn **"Thêm vào Màn hình chính" (Add to Home Screen)** để dùng như ứng dụng app học tiếng Anh riêng biệt.
- **Tính năng trên mobile:**
  - Nghe phát âm trọn vẹn từng đoạn với nhiều tốc độ (0.8x, 1.0x, 1.2x).
  - Chạm vào từ tím để xem nghĩa, ngữ cảnh, ví dụ phân tầng 3 cấp độ CEFR và flashcard Anki.
  - Chạm đúp / bôi đen từ bất kỳ để tra nghĩa nhanh và đánh dấu vàng lưu vào bài đọc.

---

## 📄 2. Sử dụng bên trong Microsoft Word (Office Add-in)

Dự án đi kèm bộ cài tiện ích mở rộng (Add-in) cho Microsoft Word trên máy tính, cho phép:
- Bôi đen bất kỳ từ hoặc câu nào trong file Word -> Bảng bên phải tự động phát âm chuẩn và dịch nghĩa tiếng Việt.
- Xem trọn vẹn bài đọc Graded Reader ngay cạnh văn bản Word đang soạn thảo.

### Cách cài đặt nhanh trên Windows (1-click):
1. Tải repository này về máy tính.
2. Chuột phải vào file `install_word_addin.ps1` -> Chọn **Run with PowerShell** (hoặc mở PowerShell và chạy `.\install_word_addin.ps1`).
3. Khởi động lại Microsoft Word.
4. Vào thẻ **Trang đầu (Home)** -> Bấm nút **"Bật Tra Từ & Đọc Bài"** (hoặc vào thẻ **Chèn / Insert** -> **Tiện ích bổ sung của tôi / My Add-ins** -> tab **Nhà phát triển / Developer** -> Chọn **Graded Vocab Reader**).

---

## 🛠️ 3. Cấu trúc thư mục

```
graded-reader/
├── index.html               # Ứng dụng Web Reader + Tích hợp Office.js hai chiều
├── manifest.xml             # Tệp đặc tả Word Add-in (chỉ định HTTPS GitHub Pages)
├── install_word_addin.ps1   # Kịch bản tự động cài đặt Add-in vào Word
├── assets/                  # Biểu tượng ứng dụng đa kích thước (16, 32, 64, 80, 128)
└── README.md                # Tài liệu hướng dẫn sử dụng
```
