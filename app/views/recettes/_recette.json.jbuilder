json.extract! recette, :id, :nom, :ingredients, :instructions, :created_at, :updated_at
json.url recette_url(recette, format: :json)
