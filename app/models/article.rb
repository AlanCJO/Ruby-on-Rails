class Article < ApplicationRecord
  # um artigo pode ter muitos comentários, portanto has_many
  include Visible
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
