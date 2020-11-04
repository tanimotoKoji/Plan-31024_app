category1 = Category.create(name:"テキスト")
category2 = Category.create(name:"動画")

category1_1 = category1.children.create(name:"こんなサービスあったらいいね")
category1_2 = category1.children.create(name:"こんな商品あったらいいね")
category1_3 = category1.children.create(name:"自己PRさせて下さい")
category1_4 = category1.children.create(name:"業界情報共有します")


category1_1.children.create([{name:"IT"},{name:"美容"},{name:"エンタメ"},{name:"買い物"},{name:"その他"}])
category1_2.children.create([{name:"インテリア・家具"},{name:"家電"},{name:"美容"},{name:"自動車"},{name:"ベビー"}])
category1_3.children.create([{name:"営業職"},{name:"企画・管理職"},{name:"事務職"},{name:"技術職（IT）"},{name:"技術職（機械・電気)"},{name:"技術職（建設設計)"},{name:"技術系職種(素材・化学)"},{name:"医療介護"},{name:"金融"},{name:"販売・サービス"},{name:"その他"}])

category2_1 = category2.children.create(name:"こんなサービスあったらいいね")
category2_2 = category2.children.create(name:"こんな商品あったらいいね")
category2_3 = category2.children.create(name:"自己PRさせて下さい")
category2_4 = category2.children.create(name:"業界情報共有します")


category2_1.children.create([{name:"IT"},{name:"美容"},{name:"エンタメ"},{name:"買い物"},{name:"その他"}])
category2_2.children.create([{name:"インテリア・家具"},{name:"家電"},{name:"美容"},{name:"自動車"},{name:"ベビー"}])
category2_3.children.create([{name:"営業職"},{name:"企画・管理職"},{name:"事務職"},{name:"技術職（IT）"},{name:"技術職（機械・電気)"},{name:"技術職（建設設計)"},{name:"技術系職種(素材・化学)"},{name:"医療介護"},{name:"金融"},{name:"販売・サービス"},{name:"その他"}])