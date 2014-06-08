json.array!(@projects) do |project|
  json.extract! project, :id, :team_id, :name, :body, :deadline
  json.url project_url(project, format: :json)
end
