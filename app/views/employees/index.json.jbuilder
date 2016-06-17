json.array!(@employees) do |employee|
  json.extract! employee, :id, :nombre, :apellido, :dni
  json.url employee_url(employee, format: :json)
end
