class Book < ApplicationRecord
  #A book belongs to an author and a library
  belongs_to :author
  belongs_to :library
end
