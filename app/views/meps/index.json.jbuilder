json.array!(@meps) do |mep|
  json.extract! mep, :id, :name, :country, :group, :email
  json.url mep_url(mep, format: :json)
end
