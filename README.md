## EasyiiCMS
Control panel and tools based on php framework Yii2. Easy cms for easy websites.


#### Подготовка локального сервера

Прописываем название сайта в /etc/hosts

*Для Windows файл лежит в C:\Windows\System32\drivers\etc\hosts*

    127.0.0.1       mysite.localhost

###### Apache

Добавляем запись виртуального хоста

*Для WAMP файл лежит в C:\wamp\bin\apache\apache2.x.x\conf\extra\httpd-vhosts.conf*

    <VirtualHost *:80>
        ServerAdmin b059ae@gmail.com
        DocumentRoot "c:/wamp/www/mysite/web"
        ServerName mysite.localhost
        ErrorLog "logs/mysite.log"
        CustomLog "logs/mysite.log" common
    </VirtualHost>
    
    
#### Установка
Получаем исходники.

    git clone git@github.com:b059ae/easyii-start.git ./
  
Обновлем composer.

    composer update
    
Создаем БД. Копируем конфиг. Прописываем настройки подключения к БД.
 
    cp app/config/db.php.sample app/config/db.php
     
Копируем точку входа.
 
    cp web/index.php.sample web/index.php 
    
Установливаем права на запись.

    web/assets
    runtime

Копируем установщик.

    cp /app/controllers/InstallController.php.sample /app/controllers/InstallController.php 
    cp /app/views/layouts/install.php.sample /app/views/layouts/install.php
    cp /app/views/install.sample /app/views/install
    
Заходим в веб-интерфейс http://mysite.localhost/install и устанавливаем CMS.
После установки удаляем установщика.

    rm /app/controllers/InstallController.php 
    rm /app/views/layouts/install.php 
    rm -R /app/views/install
    
    
#### Создание git-репозитория

Создаем на https://bitbucket.org пустой репозиторий.
В приложении прописываем его как отдельный remote.


#### Requirements
The main requirement is PHP >= 5.4, Imagick extension. Other requirements you can see after download.

Direcotry Structure
```
app/                main application folder
    assets/         contains assets definition
    config/         contains application configurations
    commands/       contains Console controller classes
    controllers/    contains Web controller classes
    media/          contains css, images and js scripts
    views/          contains application configurations
assets/             contains published files
runtime/            contains files generated during runtime
uploads/            contains all uploaded files
vendor/             contains dependent 3rd-party packages
```

#### You can find full information in links bellow ####
* [Homepage](http://easyiicms.com)
* [Installation](http://easyiicms.com/docs/install)
* [Demo](http://demo.easyiicms.com/)

#### Contacts ####

Feel free to email me on noumohope@gmail.com
