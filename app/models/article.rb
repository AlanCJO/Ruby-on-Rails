class Article < ApplicationRecord
  # um artigo pode ter muitos comentários, portanto has_many
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

=begin
  # definindo privilégios do blog
  VALID_STATUSES = %w[public private archived]

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archive'
  end
=end

end
