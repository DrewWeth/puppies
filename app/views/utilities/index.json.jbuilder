json.array!(@utilities) do |utility|
  json.extract! utility, :id, :controller, :t, :a, :action, :html_safe
  json.url utility_url(utility, format: :json)
end
