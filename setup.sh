#!/bin/bash

# تأكد إن السكريبت شغال بصلاحيات root
if [ "$EUID" -ne 0 ]; then
  echo "من فضلك شغل السكريبت باستخدام sudo"
  exit
fi

echo "🛠️ تحديث الحزم..."
sudo su

echo "⬆️ ترقية النظام..."
sudo apt update

echo "🐳 تثبيت Docker Compose..."
sudo apt upgrade

echo "🖥️ تثبيت Neofetch..."
apt install docker-compose -y

echo "📊 تشغيل Neofetch..."
apt install neofetch

echo "📊 تشغيل Neofetch..."
neofetch
