json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :title, :first_name, :last_name, :specialty
  json.url doctor_url(doctor, format: :json)
end
