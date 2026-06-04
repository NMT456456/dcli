#!/bin/bash

# Hiển thị câu hỏi xác nhận
echo -n "Bạn có chắc chắn muốn khởi động lại vào Windows không? (y/n): "
read -r answer

# Kiểm tra câu trả lời (chấp nhận y hoặc Y)
if [[ "$answer" =~ ^[Yy]$ ]]; then
    echo "Đang thiết lập và khởi động lại vào Windows..."

    # Đặt Windows làm hệ điều hành cho lượt boot kế tiếp
    sudo grub-reboot "Windows Boot Manager (on /dev/nvme0n1p1)"

    # Tiến hành reboot
    sudo reboot
else
    echo "Đã hủy lệnh. Không có thay đổi nào được thực hiện."
    exit 0
fi
