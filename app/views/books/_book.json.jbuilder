json.extract! book, :id, :author_id, :library_id, :title, :genre, :created_at, :updated_at
json.url book_url(book, format: :json)
