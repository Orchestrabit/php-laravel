サンプルテンプレート

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
docker run -d -v ./code:/var/www/html -n app laravel
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

appという名前で起動したコンテナで、マイグレートを実行します。

```
docker exec -it app php artisan migrate
```
