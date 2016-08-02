json.array!(@countries) do |country|
  json.extract! country, :id, :name, :lat, :lng
  json.url country_url(country, format: :json)
end
