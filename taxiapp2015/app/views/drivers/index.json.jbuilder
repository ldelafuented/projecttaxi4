json.array!(@drivers) do |driver|
  json.extract! driver, :id, :email, :nombre, :apellidos, :password_digest, :nroPlacaAuto, :marca, :modelo, :nroAsientos, :tipoAuto
  json.url driver_url(driver, format: :json)
end
