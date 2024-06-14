curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null
echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit-cloud.list
sudo apt update
sudo apt install playit

sudo apt-get update
sudo apt-get -y install squid
sudo service squid start
sudo mkdir things
cd things
sudo wget https://huggingface.co/spaces/CBer35/hostfiles/resolve/main/ramdom/squid.conf?download=true
sudo mv 'squid.conf?download=true' /etc/squid/squid.conf
sudo service squid restart
sudo playit