class Author < ApplicationRecord
  #An author has many books and when its deleted the book assigned is deleted
  has_many :books, dependent: :destroy
  #validation that name is present and unique
  validates :name, presence: true
  validates :name, uniqueness: true

end
