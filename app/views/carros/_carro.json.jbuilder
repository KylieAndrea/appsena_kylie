json.extract! carro, :id, :modelo, :placa, :created_at, :updated_at
json.url carro_url(carro, format: :json)
