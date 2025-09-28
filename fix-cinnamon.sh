#!/bin/bash
set -e

echo "🔄 تحديث النظام وإصلاح المشاكل..."
sudo apt update --fix-missing
sudo apt --fix-broken install -y

echo "⬇️ تثبيت الاعتماديات الأساسية..."
sudo apt install -y colord xserver-xorg software-properties-common

echo "🖥️ محاولة تثبيت Cinnamon من المستودعات الرسمية..."
if sudo apt install -y cinnamon; then
    echo "✅ تم تثبيت Cinnamon من المستودعات الرسمية."
else
    echo "⚠️ المستودعات الرسمية ما فيهاش Cinnamon كامل. بنضيف PPA embrosyn..."
    sudo add-apt-repository -y ppa:embrosyn/cinnamon
    sudo apt update
    sudo apt install -y cinnamon
fi

echo "🟢 كله تمام! أعد تشغيل الجهاز وجرب الدخول على Cinnamon."
