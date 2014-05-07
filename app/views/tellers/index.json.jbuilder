json.array!(@tellers) do |teller|
  json.extract! teller, :id, :name
  json.url teller_url(teller, format: :json)
end
