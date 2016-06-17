json.array!(@positions) do |position|
  json.extract! position, :id, :nombre, :sueldo, :descripcion
  json.url position_url(position, format: :json)
end
