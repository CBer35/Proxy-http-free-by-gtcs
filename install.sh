curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null
echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit-cloud.list
sudo apt update
sudo apt install playit

sudo apt-get update
sudo apt-get -y install squid
sudo service squid start
sudo mkdir things
cd things
sudo wget https://github.com/CBer35/Proxy-http-free-by-gtcs/blob/main/squid.conf
sudo mv squid.conf /etc/squid/squid.conf
sudo service squid restart
sudo playit