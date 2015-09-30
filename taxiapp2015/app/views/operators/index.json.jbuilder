json.array!(@operators) do |operator|
  json.extract! operator, :id, :email, :nombre, :apellidos, :password, :esAdmin
  json.url operator_url(operator, format: :json)
end
