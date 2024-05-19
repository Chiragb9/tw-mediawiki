apt update && apt upgrade
apt-get install apache2 php libapache2-mod-php php-xml php-mysql php-mbstring wget tar -y 
apt-get install php-apcu php-intl imagemagick inkscape php-gd php-cli php-curl php-bcmath git -y

cd /tmp/ && wget https://releases.wikimedia.org/mediawiki/1.41/mediawiki-1.41.1.tar.gz
tar -xvzf /tmp/mediawiki-*.tar.gz
mkdir /var/lib/mediawiki
mv mediawiki-*/* /var/lib/mediawiki

ln -s /var/lib/mediawiki /var/www/html/mediawiki