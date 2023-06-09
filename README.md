# はらぺこ

## サイト概要
### サイトテーマ
『食との新しい出会い』<br>
飲食店のレビューサイトです。店自体を評価する一般的なレビューサイトと違い、店舗の個々のメニューに焦点をあてて、その食べ物の写真とともにレビュー投稿・閲覧をする形式です。<br>
また、タグ検索機能によって従来のジャンル検索機能では出会わなかった新しい食べ物とのマッチングを促進します。

### テーマを選んだ理由
#### 背景
昨今、Instagramなど映像媒体を用いての販促が一般化しており、また消費者側も手軽に端的な内容で情報を得ることを望む傾向にある。<br>
（参考：https://smbiz.asahi.com/article/14834823）<br>
そのような時勢の中、現在主流の飲食店のレビューサイトは以下のような不便さが挙げられる。<br>

【ユーザ側】
 - 何を食べたいか、ある程度ジャンルを絞ってからでないと、飲食店を検索しにくい。
　   ex,ガッツリしたものが食べたい場合、「ラーメン」「カツ丼」など、ジャンル指定して検索する必要がある。
    →他ジャンルの希望にマッチした商品に辿り着けない可能性が高い。
 - 写真を見ただけでは商品名がわからない。
 - メニューに商品写真が載っていない場合、どのような食べ物なのかがわからない。
 - 投稿者によってレビューの書き方にばらつきがあるため、レビューの端から端まで読み込んで情報を探す必要がある。
 - 沢山のレビューを読み込んで何がオススメ商品なのか把握しなくてはならない。<br>

【飲食店側】
 - 公式LINEの立ち上げや、Instagram・TwitterなどのSNSを通じて販促を行おうとするも、まずフォロワーの獲得に苦戦する。
 - ユーザ側の反応を確認しにくい。（「いいねボタン」等を指標として用いるとしても、十分なフォロワー獲得が前提条件となってしまう）

上記背景をもとに、本レビューサイトを作成いたしました。

#### 機能
##### レビュー投稿機能
1.食べた商品の写真を撮る<br>
2.商品写真、星の数（1~5）、メニュー名、当てはまるタグ（辛い、コッテリ、ガッツリ、ヘルシーなどサイト側で用意してあるものから複数選択）、店舗情報を入力し投稿
##### 投稿検索機能
検索機能は以下２種類
 - 食べたいものに当てはまるタグを選択して検索する
 - 更新順に並んだ投稿画像を見て探す<br>
 気になる食べ物を見つけたら、レビュー内の飲食店情報（ホットペッパーAPIと連携）を確認できる

#### 本サイト利用のメリット
##### ユーザー側のメリット
 - 飲食店を探す際に店舗ごとのレビューを読み込まずとも、写真を見て食べたいと思うものを探せる。
 - 各メニューごとのレビュー内容を確認できるため、メニュー決定の一助となる。
##### 飲食店側のメリット
 - 飲食に限ったレビューサイトのため、飲食店の情報を求めるユーザ側とマッチしやすく、また掲載情報は新着順に表示されるため
 - 自身でユーザ登録することで、新作や期間限定商品などを写真付きで販促できる。
 - 「💟行ってみたい」ボタン押下の数によって、顧客の反応を見ることができ、商品開発・改良に生かすことができる。<br>

ごはんを決める時、「なにか食べたいけど何が食べたいかわからない」、「いつもの○○”でいっか”」ということありませんか？<br>
でも好きなものを好きなだけ食べられる回数は実はそんなに多くありません。<br>
だから新しい食との出会いを、ワクワクの体験を本サイトで見つけていただければ幸いです。<br>
投稿された写真から、様々に用意されたタグから、直感的に「食べたい！」と思う料理を探してみては？<br>
そしてもし「美味しい！」と思ったものがあれば、投稿機能を使って、自分の「美味しい！」を他の誰かにお裾分けしてみてください。

### ターゲットユーザ
 - お店選びに悩んでいる人
 - 今日のごはんに何を食べるか決めかねている人
 - まだ行ったことのないお店にチャレンジしてみたい人
 - 自身の店の販促を手軽に行いたい人

### 主な利用シーン
 - 外食する際にお店選びに困った時
 - お腹は空いたけど、何が食べたいか明確になっていない時
 - 「美味しい！」と思った食べ物を発信したい時
 - 自身の店の新しいメニューを広く発信したい時

## 設計書
実装機能リストのURL：https://docs.google.com/spreadsheets/d/1PCv_GMgJa0YnHtZNUuwtctQHO3E-RJUyXGfcMXARkPc/edit?usp=sharing

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9

## 使用素材
使用検討中です
