class Comment < ApplicationRecord
  validates :commenter, :email, :content, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
