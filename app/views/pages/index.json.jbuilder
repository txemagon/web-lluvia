json.array!(@pages) do |page|
  json.extract! page, :id, :titulo, :description, :link, :body, :parent_id, :tutorial
  json.url page_url(page, format: :json)
end
