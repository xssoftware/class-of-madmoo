json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :work_assignments_id, :user_id, :project_id, :title, :body
  json.url assignment_url(assignment, format: :json)
end
