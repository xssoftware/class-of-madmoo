json.array!(@forums) do |forum|
  json.extract! forum, :id, :team_id, :name
  json.url forum_url(forum, format: :json)
end
