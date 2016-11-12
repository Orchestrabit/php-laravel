# プロジェクトのはじめ方

## コードディレクリを初期化する

coposer dockerイメージを使って、wwwwディレクリを初期化します。

```
docker run --rm -v $(pwd):/app composer/composer create-project laravel/laravel www
```

書き込み権限を付与します。

```
chmod -R 777 www/storage/
chmod -R 777 www/bootstrap/cache/
````




# docker runする場合

## docker build

Dockerfileから、dockerイメージをビルドします。

```
docker build -t laravel .
```

## docker run

docker runコマンドで、起動します。

```
docker run -p 8080:80 -w /var/www/public -d -v ./www:/var/www -name webapp laravel
```


# docker-composeする場合

## docker-compose.yml

```
version: '2'
services:
  php-laravel:
    build: admin
    ports:
      - 8082:80
    volumes:
      - ./admin/www:/var/www
    environment:
      DB_CONNECTION: mysql
      DB_HOST: db
      DB_DATABASE: laravel
      DB_USERNAME: root
      DB_PASSWORD: hogehoge
    working_dir: /var/www/public
```


## docker-compose build

```
docker-compse build
```

## docker-compose up -d

```
docker-compose up -d
```



## DBをマイグレートします

webappという名前で起動したコンテナで、マイグレートを実行します。

```
docker exec -it webapp php artisan migrate
```
