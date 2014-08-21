json.array!(@courseras) do |coursera|
  json.extract! coursera, :id, :cid, :name, :email
  json.url coursera_url(coursera, format: :json)
end
