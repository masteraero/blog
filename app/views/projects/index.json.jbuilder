json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :file_name
  json.url project_url(project, format: :json)
end
