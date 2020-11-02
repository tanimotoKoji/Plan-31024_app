# テーブル設計

## users テーブル

| Column          | Type    | Options     |
| --------------- | ------  | ----------- |
| nickname        | string  | null: false |
| gender_id       | integer | null: false |
| profile         | string  | null: false |
| last_name       | string  | null: false |
| first_name      | string  | null: false |
| last_name_kana  | string  | null: false |
| first_name_kana | string  | null: false |
| age_id          | integer | null: false |
| occupation_id   | integer | null: false |
| avatar          | activeStorage         |


### Association

- has_many :posts
- has_many :evaluations
- has_many :orders


## posts テーブル

| Column          | Type       | Options                      |
| --------------- | ---------- | ---------------------------- |
| user_id         | references | null: false,foreign_key:true |
| title           | string     | null: false                  |
| content         | text       | null: false                  |
| pay_id          | integer    | null: false                  |
| price           | integer    |                              |


### Association

- belongs_to :user
- has_one    :order
- has_many :evaluations
- has_many :post_category_relations
- has_many :categories, through: :post_category_relations

## categories テーブル

| Column         | Type       | Options       |
| -------------- | ---------- | ------------- |
| name           | string     | null: false   |
| ancestry       | string     | null: false   |

### Association

- has_many :post_category_relations
- has_many :posts, through: :post_category_relations


## evaluations テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| user_id        | references | null: false, foreign_key: true |
| post_id        | references | null: false, foreign_key: true |
| first_id       | integer    | null: false,                   |
| second_id      | integer    | null: false,                   |
| third_id       | integer    | null: false,                   |
| fourth_id      | integer    | null: false,                   |
| fifth_id       | integer    | null: false,                   |
| sixth_id       | integer    | null: false,                   |
| seventh_id     | integer    | null: false,                   |
| eighth_id      | integer    | null: false,                   |
| ninth_id       | integer    | null: false,                   |
| tenth_id       | integer    | null: false,                   |
| comment        | text       |                                |

### Association

- belongs_to :user
- belongs_to :post

## orders テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| user_id        | references | null: false, foreign_key: true |
| post_id        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :post

