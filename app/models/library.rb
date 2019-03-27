class Library < ApplicationRecord
  #A library has many books, when a library is deleted the book assigned to the library is also deleted
  has_many :books, dependent: :destroy
  #validation of the presence and uniqueness of the name
  validates :name, presence: true
  validates :name, uniqueness: true
end
