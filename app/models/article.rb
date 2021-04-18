class Article < ApplicationRecord

  def to_s
    %`Title: #{self.title} || Body: #{self.body}`
  end
end
