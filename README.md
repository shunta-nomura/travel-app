### アプリケーション名 <br> エヌ・ストレージ

### アプリケーション概要 <br> このアプリケーションではあなたの旅行の思い出の写真を旅行した都道府県別に保存することができます。

### URL <br> https://travel-n-memorie.herokuapp.com/

### サンプルユーザー情報 <br> ユーザーeメール: sample@sample.com <br> パスワード: C7B89HzuBe

### ご利用方法 <br> 本サービスは会員システムを使用しています。県を選ぶページがログインしたら表示されるので、県を選びます。ページは県別になっており、画像が該当の県のみ登録、表示ができるようになっております。

## テーブル情報

## usersテーブル

|Column             |Type    |Options      |
|-------------------|--------|-------------|
| nickname          | string | null: false |
| email             | string | null: false unique: true|
| encrypted_password| string | null: false |


### Association
has_many :memories


##  memoriesテーブル

|Column                |Type         |Options      |
|---------------------|-------------|-------------|
| description         | text        |             |
| prefecture_id       | integer     | null: false |
| user                | reference   | foreign_key: true ｜


### Association
belongs_to :user 

### 今後の実装予定は、画像の詳細ページの記載、削除、更新の実装 ユーザー情報の編集を行います。

### 目指した課題解決 <br>今までの旅行の思い出の写真はどこで撮影した写真なのか分からないことがあったので、それを解決するために作りました。<br>考えているペルソナは趣味が旅行で性別は関係ありません。

* ### 要件定義

  * ユーザー登録機能	ユーザーごとに情報を入れたいのでユーザー認証を入れたい
  * 画像と文章保存システム(県別)	写真と文章を県別で保存したい
  * 友達機能	友達と情報共有をしたい
  * シェア機能	写真を共有したい


* ### ローカルでの動作方法 <br> 
  * $ git clone https://github.com/shunta-nomura/travel_app
  * $ cd travel_app
  * $ bundle install
  * $ yarn install
