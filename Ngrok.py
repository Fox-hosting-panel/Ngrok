import os

print("✅ بدأ تشغيل سكريبت ngrok الخاص بفوكس...")

# 1️⃣ أمر التثبيت الكامل
os.system('curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
  && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
  | sudo tee /etc/apt/sources.list.d/ngrok.list \
  && sudo apt update \
  && sudo apt install ngrok')

# 2️⃣ أمر إضافة التوكن
os.system('ngrok config add-authtoken 2xQH7nw5gczXfWqtW0SVHPCcRFI_69tkJXBizSE6nMFU2G8dE')

# 3️⃣ أمر تشغيل النفق
os.system('ngrok http --url=relieved-tetra-sweet.ngrok-free.app 8080')
