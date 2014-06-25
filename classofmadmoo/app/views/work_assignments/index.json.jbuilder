json.array!(@work_assignments) do |work_assignment|
  json.extract! work_assignment, :id, :user_id, :project_id, :title, :body
  json.url work_assignment_url(work_assignment, format: :json)
end
