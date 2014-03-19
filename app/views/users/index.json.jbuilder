json.array!(@users) do |user|
  json.extract! user, :id, :name, :lastName, :biography, :interests, :developer, :designer
  json.url user_url(user, format: :json)
end
