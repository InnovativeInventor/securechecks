echo "Warning: I have not audited this repo for trojan horses"

git clone https://github.com/CISOfy/lynis ~/git/lynis

cd ~/git/lynis

sudo ./lynis audit system
