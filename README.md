# README
<br>
<br>
<br>

# プロジェクト名
## ワインリストアプリ
<br>
<br>
<br>

## 概要
レストランでお客さんがワインを選ぶ際に使うワインリストアプリケーションです。  
ワインをスパークリングワインや白ワインなどのタイプ、品種、国名、地域名などやテイスティングコメントなどをレストランスタッフが登録して一覧で表示されます。スタッフは登録、編集、削除などを行い、在庫管理機能や販売したいかしたくないかのチェックをすることで表示を変えることができます。
  
<br>
<br>

## 制作背景
レストランで働いているときにワインリストをillustoratorなどで作成していたが、４００種類取り扱いがあり、当然のごとく、なくなるワインやワインリストに載せるワインを変えたいという状況になることが多かったです。アプリケーションで自動で書き換わる風になったら便利だなと感じていました。その課題を解決でき、さらに商品管理がしやすくなれば便利と考え、開発に至りました。
  
  
<br>
  
## 使用技術
・フロントエンド
  
HTML, CSS
  
・バックエンド
  
Ruby on Rails
  
<br>
<br>

## DB設計
<br>

#### Usersテーブル
  
|Column  |Type  | Options  |
|--------|------|----------|
|email   |string|null: false|
|password|string|null: false|

has_many: wines
  
<br>
<br>
  

#### Winesテーブル
  
|Column               |Type          |Options           |
|---------------------|--------------|------------------|
|winename             |string        | null: false      |
|winename_kana        |string        | null: false      |
|purchase_price       |integer       |                  |
|salling_price        |integer       | null: false      |
|comment              |text          | null: false      |
|country_id           |integer       | ActiveHash       |
|state_id             |integer       | ActiveHash       |
|bio_id               |integer       | ActiveHash       |
|winary_id            |references    | foreign_key: true |
|wholesaler_id        |references    | foreign_key: true      
|type_id              |integer       | ActiveHash       |
|stock                |integer       | null: false      |
|onlist               |boolean       |                  |
  
belongs_to :user
belongs_to :wholesaler
belongs_to :winary
has_many :grapes, through :wine_grapes
has_many :wine_grapes
  
<br>
<br>
  

#### Grapesテーブル
  
|Coloumn              |Type           | Options        |
|---------------------|---------------|----------------|
|grapename            |string         | null: false    |
  
has_many :wines, through :wine_grapes
has_many :wine_grapes
  
<br>
<br>
  
#### Wine_Grapesテーブル

|Column            | Type           | Options        |
|------------------|----------------|----------------|
|wine_id           | references     | foreign_key: true|
|grape_id          | references     | foreign_key: true|
  
belongs_to :wine
belongs_to :grape
  
<br>
<br>

### Wholesalersテーブル

|Column            | Type             | Options        |
|------------------|------------------|----------------|
|name              | string           |                |
  
  
has_many: wines
<br>
<br>

### Winariesテーブル
  
|Column            | Type             | Options        |
|------------------|------------------|----------------|
|winaryname        | string           | null: false    |
|winaryname_kana   | string           | null: false    |
  
has_many :wines

<br>

<br>
  

# 使い方

・ユーザーはワインリスト一覧画面からサイドバーのスパークリングワインなどのカテゴリーをクリックするとそのカテゴリーに該当するワインが表示されます。

  
・ユーザーは好きな品種やワイン名で検索ができます。
  
・管理者はログインすることでワインを投稿、編集、削除ができます。
  
・管理者は在庫を登録、増減させることで在庫状況を把握できるようになります。  
在庫状況により、自動的にリストに表示されなくなります。

・管理者はオンリストするかを選択し、販売するしないを決めることができます。
  




