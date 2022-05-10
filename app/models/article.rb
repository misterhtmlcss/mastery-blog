class Article < ApplicationRecord
  # has_many :comments

  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 6 }
  validates :body, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 10 }

  # TODO: Add a scope for drafts, public
end
