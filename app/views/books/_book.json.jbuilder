json.extract! book, :id, :name, :release, :publisher, :rating, :genre, :created_at, :updated_at
json.url book_url(book, format: :json)
