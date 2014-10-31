json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :title, :first_name, :last_name, :service, :address, :lat, :lng
  json.url doctor_url(doctor, format: :json)
end
