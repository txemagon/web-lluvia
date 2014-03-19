json.array!(@members) do |member|
  json.extract! member, :id, :name, :lastName, :biography, :interest
  json.url member_url(member, format: :json)
end
