class Bookmark < ApplicationRecord

  validates :page, presence: true
  validates :description, presence: true

  belongs_to :book

end
