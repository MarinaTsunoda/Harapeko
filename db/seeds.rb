# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create(email: 'admin_sample@gmail.com', password: '123456')

users = User.create!(
  [
    {user_name: 'なずな', user_introduction: '国内旅行が趣味です！', last_name: '脇田', first_name: '菜津那', last_name_kana: 'ワキタ', first_name_kana: 'ナズナ', sex: 1, birth_date: '2000-7-17', postal_code: '6980203', address: '島根県益田市美都町都茂1-4', telephone_number: '085277849', is_deleted: false, email: 'nazuna.w@example.com', password: 'wn7849'},
    {user_name: 'Fuka', user_introduction: '美味しいスイーツ探し中', last_name: '紺野', first_name: '風花', last_name_kana: 'コンノ', first_name_kana: 'フウカ', sex: 1, birth_date: '1986-12-29', postal_code: '7315121', address: '広島県広島市佐伯区五日市町美鈴園4-3', telephone_number: '0841070959', is_deleted: false, email: 'k.f.1229@example.com', password: 'kf0959'},
    {user_name: 'リツキ', user_introduction: 'ドライブしながらお店探し', last_name: '菅沼', first_name: '律樹', last_name_kana: 'スガヌマ', first_name_kana: 'リツキ', sex: 0, birth_date: '1999-3-31', postal_code: '3940044', address: '長野県岡谷市湊2-12-19', telephone_number: '0267770620', is_deleted: false, email: 'ritsuki.s@example.com', password: 'sr0620'},
    {user_name: 'ひで', user_introduction: '最近油物が食べられない・・・', last_name: '高岡', first_name: '英光', last_name_kana: 'タカオカ', first_name_kana: 'ヒデミツ', sex: 0, birth_date: '1996-11-7', postal_code: '1060045', address: '東京都港区麻布十番2-5-2', telephone_number: '0310883073', is_deleted: false, email: 'hide.taka@example.com', password: 'th3073'},
    {user_name: 'KANA', user_introduction: '一人カフェ巡りが好き', last_name: '藤川', first_name: '加奈', last_name_kana: 'フジカワ', first_name_kana: 'カナ', sex: 1, birth_date: '1967-5-16', postal_code: '6360102', address: '奈良県生駒郡斑鳩町岡本1-15-10', telephone_number: '0745184577', is_deleted: false, email: 'kana0516@example.com', password: 'fw4577'},
    {user_name: '山さん', user_introduction: '世界の山さん', last_name: '山上', first_name: '元彦', last_name_kana: 'ヤマガミ', first_name_kana: 'モトヒコ', sex: 0, birth_date: '1995-2-16', postal_code: '0287645', address: '岩手県八幡平市下タ川原4-16-13', telephone_number: '0193905246', is_deleted: false, email: 'yamachan@example.com', password: 'ym5246'},
    {user_name: 'myu', user_introduction: 'myuです！仲良くしてください！', last_name: '服部', first_name: '美優', last_name_kana: 'ハットリ', first_name_kana: 'ミユウ', sex: 1, birth_date: '2003-4-12', postal_code: '2670055', address: '千葉県千葉市緑区越智町1-7-17', telephone_number: '0485657772', is_deleted: false, email: 'myumyu@example.com', password: 'hm7772'},
    {user_name: '松みち', user_introduction: '和洋中なんでも好きです！！！', last_name: '松山', first_name: '道治', last_name_kana: 'マツヤマ', first_name_kana: 'ミチハル', sex: 0, birth_date: '1977-5-2', postal_code: '9200364', address: '石川県金沢市松島1-11-12', telephone_number: '0762573868', is_deleted: false, email: 'michi-matsu@example.com', password: 'mm3868'},
    {user_name: '若奈', user_introduction: 'おなかすいた', last_name: '石野', first_name: '若菜', last_name_kana: 'イシノ', first_name_kana: 'ワカナ', sex: 1, birth_date: '1971-4-2', postal_code: '8350017', address: '福岡県みやま市瀬高町東津留2-18', telephone_number: '0929114630', is_deleted: false, email: 'waka0402@example.com', password: 'iw3630'},
    {user_name: '匠', user_introduction: '劇的ビフォーアフター', last_name: '門脇', first_name: '匠', last_name_kana: 'カドワキ', first_name_kana: 'タクミ', sex: 0, birth_date: '1995-10-4', postal_code: '3701601', address: '群馬県多野郡神流町魚尾3-16-6', telephone_number: '0278609559', is_deleted: false, email: 'takumi-k@example.com', password: 'kk9559'}
  ]
)

tag_genres = TagGenre.create!(
  [
    {name: '人数'},
    {name: 'シーン'},
    {name: '時間帯'},
    {name: 'エモーション'},
    {name: '量'},
    {name: '支払方法'},
    {name: '味'},
    {name: '食感'},
    {name: 'ジャンル'},
    {name: '予算'}
  ]
)

tags = Tag.create!(
  [
    {name: '１人', tag_genre_id: 1},
    {name: '２〜４人', tag_genre_id: 1},
    {name: '５人〜９人', tag_genre_id: 1},
    {name: '１０人以上', tag_genre_id: 1},
    {name: 'デート', tag_genre_id: 2},
    {name: '飲み会', tag_genre_id: 2},
    {name: '接待', tag_genre_id: 2},
    {name: '休憩', tag_genre_id: 2},
    {name: 'お祝い', tag_genre_id: 2},
    {name: '食事', tag_genre_id: 2},
    {name: 'モーニング', tag_genre_id: 3},
    {name: 'ランチ', tag_genre_id: 3},
    {name: 'カフェタイム', tag_genre_id: 3},
    {name: 'ディナー', tag_genre_id: 3},
    {name: 'ご褒美', tag_genre_id: 4},
    {name: 'パーっといきたい', tag_genre_id: 4},
    {name: 'スッキリしたい', tag_genre_id: 4},
    {name: 'ほっこり', tag_genre_id: 4},
    {name: 'のんびり', tag_genre_id: 4},
    {name: 'ワクワク', tag_genre_id: 4},
    {name: 'ドキドキ', tag_genre_id: 4},
    {name: '少なめ', tag_genre_id: 5},
    {name: '普通', tag_genre_id: 5},
    {name: '多め', tag_genre_id: 5},
    {name: '大盛', tag_genre_id: 5},
    {name: 'メガ盛', tag_genre_id: 5},
    {name: '現金のみ', tag_genre_id: 6},
    {name: 'キャッシュレス可', tag_genre_id: 6},
    {name: '甘い', tag_genre_id: 7},
    {name: '辛い', tag_genre_id: 7},
    {name: 'すっぱい', tag_genre_id: 7},
    {name: 'コッテリ', tag_genre_id: 7},
    {name: 'さっぱり', tag_genre_id: 7},
    {name: 'あっさり', tag_genre_id: 7},
    {name: 'しょっぱい', tag_genre_id: 7},
    {name: 'スパイシー', tag_genre_id: 7},
    {name: 'がっつり', tag_genre_id: 7},
    {name: '苦い', tag_genre_id: 7},
    {name: 'サクサク', tag_genre_id: 8},
    {name: 'パリパリ', tag_genre_id: 8},
    {name: 'ツルツル', tag_genre_id: 8},
    {name: 'とろ〜り', tag_genre_id: 8},
    {name: 'ジューシー', tag_genre_id: 8},
    {name: 'ふわふわ', tag_genre_id: 8},
    {name: 'しっとり', tag_genre_id: 8},
    {name: 'もちもち', tag_genre_id: 8},
    {name: 'カリカリ', tag_genre_id: 8},
    {name: 'ネバネバ', tag_genre_id: 8},
    {name: 'ザクザク', tag_genre_id: 8},
    {name: 'しゅわしゅわ', tag_genre_id: 8},
    {name: '和食', tag_genre_id: 9},
    {name: 'イタリアン', tag_genre_id: 9},
    {name: 'フレンチ', tag_genre_id: 9},
    {name: '中華', tag_genre_id: 9},
    {name: 'エスニック', tag_genre_id: 9},
    {name: '韓国料理', tag_genre_id: 9},
    {name: 'アメリカン', tag_genre_id: 9},
    {name: 'B級グルメ', tag_genre_id: 9},
    {name: 'カレー', tag_genre_id: 9},
    {name: 'ラーメン', tag_genre_id: 9},
    {name: 'デザート', tag_genre_id: 9},
    {name: '〜1,000円以内', tag_genre_id: 10},
    {name: '1,001〜2,000円', tag_genre_id: 10},
    {name: '2,001〜3,000円', tag_genre_id: 10},
    {name: '3,001〜5,000円', tag_genre_id: 10},
    {name: '5,001〜10,000円', tag_genre_id: 10},
    {name: '10,001円以上', tag_genre_id: 10}
  ]
)

posts = Post.create!(
  [
    {user_id: 1, shop_id: "J001283549", shop_large_area: "北海道", shop_midnight_meal: "", name: "いちごのショートケーキ", star: 4.0, price: 540, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ショートケーキ.jpeg"), filename:"ショートケーキ.jpeg")},
    {user_id: 1, shop_id: "J003559842", shop_large_area: "青森", shop_midnight_meal: "", name: "スフレチーズケーキ", star: 3.0, price: 660, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/スフレチーズケーキ.jpg"), filename:"スフレチーズケーキ.jpg ")},
    {user_id: 1, shop_id: "J001109788", shop_large_area: "岩手", shop_midnight_meal: "", name: "コブサラダ", star: 5.0, price: 960, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/コブサラダ.jpg"), filename:"コブサラダ.jpg")},
    {user_id: 1, shop_id: "J000820796", shop_large_area: "宮城", shop_midnight_meal: "", name: "トマトソースパスタ", star: 3.0, price: 1320, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/トマトソースパスタ.jpg"), filename:"トマトソースパスタ.jpg")},
    {user_id: 1, shop_id: "J001217312", shop_large_area: "徳島", shop_midnight_meal: "", name: "ビーフシチュー", star: 5.0, price: 1650, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ビーフシチュー.jpg"), filename:"ビーフシチュー.jpg")},
    {user_id: 2, shop_id: "J001277294", shop_large_area: "山形", shop_midnight_meal: "", name: "目玉焼きハンバーグ", star: 2.0, price: 1540, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/目玉焼きハンバーグ.jpg"), filename:"目玉焼きハンバーグ.jpg")},
    {user_id: 2, shop_id: "J001192788", shop_large_area: "福島", shop_midnight_meal: "", name: "炉端焼き", star: 4.0, price: 880, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/炉端焼き.jpg"), filename:"炉端焼き.jpg")},
    {user_id: 2, shop_id: "J003366516", shop_large_area: "茨城", shop_midnight_meal: "", name: "ホットサンド", star: 5.0, price: 770, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ホットサンド.jpg"), filename:" ホットサンド.jpg")},
    {user_id: 2, shop_id: "J001120705", shop_large_area: "栃木", shop_midnight_meal: "", name: "グリルソーセージ", star: 3.0, price: 990, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ソーセージ.jpg"), filename:"ソーセージ.jpg")},
    {user_id: 2, shop_id: "J001128183", shop_large_area: "群馬", shop_midnight_meal: "", name: "サンマの塩焼き定食", star: 4.0, price: 660, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/サンマの塩焼き定食.jpg"), filename:"サンマの塩焼き定食.jpg")},
    {user_id: 3, shop_id: "J003411771", shop_large_area: "埼玉", shop_midnight_meal: "", name: "餃子３種", star: 5.0, price: 1650, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/餃子３種.jpg"), filename:"餃子３種.jpg")},
    {user_id: 3, shop_id: "J001169639", shop_large_area: "千葉", shop_midnight_meal: "", name: "エゴマ餃子", star: 2.0, price: 440, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/エゴマ餃子.jpg"), filename:"エゴマ餃子.jpg")},
    {user_id: 3, shop_id: "J002648384", shop_large_area: "東京", shop_midnight_meal: "", name: "鴨せいろそば", star: 4.0, price: 1300, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/鴨せいろそば.jpg"), filename:" 鴨せいろそば.jpg")},
    {user_id: 3, shop_id: "J003560143", shop_large_area: "神奈川", shop_midnight_meal: "", name: "山菜のかき揚げ", star: 3.0, price: 1250, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/山菜のかき揚げ.jpg"), filename:"山菜のかき揚げ.jpg")}
  ]
)
  
post_tag_relations = PostTagRelation.create!(
  [
    {tag_id: 15, post_id: 1},
    {tag_id: 27, post_id: 1},
    {tag_id: 29, post_id: 1},
    {tag_id: 44, post_id: 1},
    {tag_id: 61, post_id: 1},
    {tag_id: 62, post_id: 1},
    {tag_id: 5, post_id: 2},
    {tag_id: 28, post_id: 2},
    {tag_id: 32, post_id: 2},
    {tag_id: 45, post_id: 2},
    {tag_id: 61, post_id: 2},
    {tag_id: 63, post_id: 2},
    {tag_id: 2, post_id: 3},
    {tag_id: 14, post_id: 3},
    {tag_id: 24, post_id: 3},
    {tag_id: 34, post_id: 3},
    {tag_id: 57, post_id: 3},
    {tag_id: 65, post_id: 3},
    {tag_id: 5, post_id: 4},
    {tag_id: 35, post_id: 4},
    {tag_id: 37, post_id: 4},
    {tag_id: 52, post_id: 4},
    {tag_id: 65, post_id: 4},
    {tag_id: 9, post_id: 5},
    {tag_id: 14, post_id: 5},
    {tag_id: 15, post_id: 5},
    {tag_id: 32, post_id: 5},
    {tag_id: 42, post_id: 5},
    {tag_id: 66, post_id: 5},
    {tag_id: 6, post_id: 6},
    {tag_id: 23, post_id: 6},
    {tag_id: 37, post_id: 6},
    {tag_id: 43, post_id: 6},
    {tag_id: 65, post_id: 6},
    {tag_id: 14, post_id: 7},
    {tag_id: 21, post_id: 7},
    {tag_id: 43, post_id: 7},
    {tag_id: 51, post_id: 7},
    {tag_id: 12, post_id: 8},
    {tag_id: 37, post_id: 8},
    {tag_id: 39, post_id: 8},
    {tag_id: 57, post_id: 8},
    {tag_id: 14, post_id: 9},
    {tag_id: 19, post_id: 9},
    {tag_id: 36, post_id: 9},
    {tag_id: 43, post_id: 9},
    {tag_id: 52, post_id: 9},
    {tag_id: 1, post_id: 10},
    {tag_id: 12, post_id: 10},
    {tag_id: 43, post_id: 10},
    {tag_id: 44, post_id: 10},
    {tag_id: 51, post_id: 10},
    {tag_id: 16, post_id: 11},
    {tag_id: 27, post_id: 11},
    {tag_id: 33, post_id: 11},
    {tag_id: 37, post_id: 11},
    {tag_id: 40, post_id: 11},
    {tag_id: 54, post_id: 11},
    {tag_id: 65, post_id: 11},
    {tag_id: 10, post_id: 12},
    {tag_id: 18, post_id: 12},
    {tag_id: 34, post_id: 12},
    {tag_id: 38, post_id: 12},
    {tag_id: 54, post_id: 12},
    {tag_id: 1, post_id: 13},
    {tag_id: 24, post_id: 13},
    {tag_id: 35, post_id: 13},
    {tag_id: 41, post_id: 13},
    {tag_id: 63, post_id: 13},
    {tag_id: 25, post_id: 14},
    {tag_id: 32, post_id: 14},
    {tag_id: 49, post_id: 14},
    {tag_id: 66, post_id: 14}
  ]
)
