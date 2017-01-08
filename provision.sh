echo "preparing to run the script"
sudo yum -y update
sudo yum -y upgrade
sudo yum -y install python-devel graphviz nano unzip
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python get-pip.py
sudo pip install pydot==1.1.0
curl -LO https://github.com/MJL85/mnet/archive/master.zip
unzip master.zip
sudo pip install -e mnet-master/
sudo sed -i '28s/.*/USE_NETADDR = 0/' mnet-master/mnetsuite/util.py
mnet.py config > mnet.conf
sed -i '1s/.*/ /' mnet.conf
sudo sed -i '4s/.*/                { "community":"private",    "ver":2 },/' mnet.conf
sudo sed -i '5s/.*/                { "community":"public",    "ver":2 }/' mnet.conf
