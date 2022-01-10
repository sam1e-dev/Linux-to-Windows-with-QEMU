sudo wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
sudo unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
sudo read -p "Paste authtoken here (Copy and Ctrl+V to paste then press Enter): " CRP
sudo ./ngrok authtoken $CRP 
sudo nohup ./ngrok tcp 5900 &>/dev/null &
sudo echo Please wait for installing...
sudo apt update -y > /dev/null 2>&1
sudo echo "Installing QEMU (2-3m)..."
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
sudo echo Downloading Windows Disk...
sudo curl -L -o lite10.qcow2 https://app.vagrantup.com/thuonghai2711/boxes/WindowsQCOW2/versions/1.1.3/providers/qemu.box
sudo echo "Windows 10 x64 Lite On Google Colab"
sudo echo Your VNC IP Address:
sudo curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
sudo echo "Note: Use Right-Click Or Ctrl+C To Copy"
sudo echo "Please Keep Colab Tab Open, Maximum Time 12h"
sudo echo Script by fb.com/thuong.hai.581
sudo qemu-system-x86_64 -vnc :0 -hda lite10.qcow2  -smp cores=4  -m 12288M -machine usb=on -device usb-tablet > /dev/null 2>&1


