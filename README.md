# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# DB設計

# users テーブル
| Column              | Type     | Options                   |
| ------------------- | -------- | ------------------------- |
| email               | string   | null: false, unique: true |
| encrypted_password  | string   | null: false               |
| nickname            | string   | null: false               |

### Association
- has_many :ranking_users
- has_many :ranking, through: ranking_users
- has_many :votes


# rankings テーブル
| Column     | Type          | Options     |
| ---------- | ------------- | ----------- |
| title      | string        | null: false |
| category   | string        | null: false |
| choice_a   | string        | null: false |
| choice_b   | string        | null: false |
| choice_c   | string        | null: false |
| choice_d   | string        | null: false |
| choice_e   | string        | null: false |

### Association
- has_many :ranking_users
- has_many :users, through: ranking_users
- has_many :votes


# ranking_users テーブル
| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| ranking     | references | null: false, foreign_key: true |

### Association
- belongs_to :ranking
- belongs_to :user


# votes テーブル
| Column      | Type          | Options                        |
| ----------- | ------------- | ------------------------------ |
| vote        | string        | null: false                    |
| user        | references    | null: false, foreign_key: true |
| ranking     | references    | null: false, foreign_key: true |

### Association
- belongs_to :ranking
- belongs_to :user
