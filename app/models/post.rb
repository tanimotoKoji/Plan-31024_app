class Post < ApplicationRecord
  belongs_to :user
  has_many :evaluations
  belongs_to :category
  has_rich_text :content
end
