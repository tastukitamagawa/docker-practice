FROM php:8.3.7-apache

# mysqlに接続するパッケージをインストールする
# コンテナ内にぱパッケージをインストールするコマンド
RUN apt update \
 && docker-php-ext-install pdo_mysql 

COPY src/ /var/www/html/