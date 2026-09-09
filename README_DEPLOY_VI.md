# Evolution ERP V11 FastAPI

Bản chuyển đổi Python/FastAPI, không cần Node.js. Giữ giao diện và API V11, dữ liệu hiện tại được copy vào `runtime-data` lần chạy đầu.

## Windows
Chạy `start-windows.bat`, mở http://127.0.0.1:3000.

## Linux test
```bash
chmod +x start-linux.sh deployment/*.sh
./start-linux.sh
```

## Linux service
```bash
sudo bash deployment/install-linux.sh
```

Tài khoản: `ADM-001 / Admin123`.

## Lưu ý dài hạn
Bản này loại bỏ Node.js và giữ tương thích V11. Dữ liệu đang dùng JSON có ghi file nguyên tử. Bước nâng cấp kế tiếp cho tải đồng thời cao là chuẩn hóa các collection sang PostgreSQL/Alembic.
