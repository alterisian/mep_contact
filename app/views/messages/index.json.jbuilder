json.array!(@messages) do |message|
  json.extract! message, :id, :mep_id, :from_name, :from_email, :from_location, :ip_address, :lat, :lng, :uniqueid, :value
  json.url message_url(message, format: :json)
end
