json.array!(@subjects) do |subject|
  json.extract! subject, :id, :cid, :name, :email
  json.url subject_url(subject, format: :json)
end
