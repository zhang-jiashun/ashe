class Note < ApplicationRecord
  has_rich_text :content

  has_many :comments, dependent: :destroy

  validates :title, :content, presence: true
  validates :title, uniqueness: true
end
