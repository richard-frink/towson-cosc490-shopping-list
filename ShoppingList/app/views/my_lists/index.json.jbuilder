json.array!(@my_lists) do |my_list|
  json.extract! my_list, :id, :name
  json.url my_list_url(my_list, format: :json)
end
