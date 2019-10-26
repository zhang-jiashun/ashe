class Note < ApplicationRecord
  has_rich_text :content

  validates :title, :content, presence: true
  validates :title, uniqueness: true
end
