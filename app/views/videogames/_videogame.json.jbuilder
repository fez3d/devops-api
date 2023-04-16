json.extract! videogame, :id, :name, :release, :publisher, :rating, :genre, :created_at, :updated_at
json.url videogame_url(videogame, format: :json)
