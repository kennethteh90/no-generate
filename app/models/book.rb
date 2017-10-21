class Book < ApplicationRecord

  validates :name, presence: true
  validates :author, presence: true

  has_many :bookmarks

end
