json.extract! user, :id, :nombre, :tipo_documento, :documento, :created_at, :updated_at
json.url user_url(user, format: :json)
