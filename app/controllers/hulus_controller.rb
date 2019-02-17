class HulusController < ApplicationController
  def index
    # 今後コントローラーごとに絞り込んで取得するようにする
    # Product.where(publisher: "hulu") # publisher:配給元
    @products = Product.all
  end

  def crawler
    # サイトをクロールするためのmechanaze等のメソッド類は、
    # 基本的にproductのmodel側に追加していきたいが下記の様な注意点があるため、
    # ある程度、処理が増えてきたらサービスクラスに処理を切り出すのが妥当そう。
    #
    # Railsではビジネスロジックはモデルに実装するのが通説ですが、
    # その原則に従うと、すぐにモデルが肥大してしまいます（いわゆる「Fat Model」）。
    # そこで肥大化したActiveRecordモデルをリファクタリングする7つの方法で紹介されているように、
    # モデル以外にロジックを分離していきます。
    # 特に「サービス」が便利で、ある一つの単位の機能をまとめて実装します。
    # https://qiita.com/chrischris0801/items/58a12d17a440b842db02
  end
end
