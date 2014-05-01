json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :github_link
  json.url project_url(project, format: :json)
end
