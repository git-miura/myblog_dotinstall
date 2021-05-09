class Post < ApplicationRecord
  #commentsと紐づける
  #dependent: :destroyで、ポストが消去されたときに関連するmodelからデータを削除してくれる
  has_many :comments, dependent: :destroy
  # @post.commentsで情報取得
  validates :title, presence: true, length: { minimum: 3, message: "Too short to post!" }
  validates :body, presence: true
end
