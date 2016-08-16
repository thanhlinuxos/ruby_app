json.extract! person, :id, :name, :mail, :age, :created_at, :updated_at
json.url person_url(person, format: :json)