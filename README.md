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