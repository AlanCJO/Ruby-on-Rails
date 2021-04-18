class Article < ApplicationRecord
  # has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

=begin
  # definindo privilégios do blog
  VALID_STATUSES = %w[public private archived]

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status.eql? 'archive'
  end
=end

end
