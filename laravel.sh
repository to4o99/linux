# Install PHP
sudo apt install openssl php-bcmath php-curl php-json php-mbstring php-mysql php-tokenizer php-xml php-zip php-sqlite3 php-intl

# Install Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

sudo mv composer.phar /usr/local/bin/composer

# Install node.js with nvm for npm
git clone https://github.com/nvm-sh/nvm.git
chmod +x nvm/install.sh
./nvm/install.sh

nvm install node

# Install Laravel
/bin/bash -c "$(curl -fsSL https://php.new/install/linux)"
