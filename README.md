サンプルテンプレート

# プロジェクトのはじめ方

## コードディレクリを初期化する

coposer dockerイメージを使って、codeディレクリを初期化します。

```
docker run --rm -v $(pwd):/app composer/composer create-project laravel/laravel code
```

## docker build

Dockerfileから、dockerイメージをビルドします。

```
docker build -t laravel .
```

## docker run

docker runコマンドで、起動します。

```
dockdr run -d -v ./code:/var/www/html -n app laravel
```

## DBをマイグレートします

appという名前で起動したコンテナで、マイグレートを実行します。

```
docker exec -it app php artisan migrate
```
