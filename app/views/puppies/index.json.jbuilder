json.array!(@puppies) do |puppy|
  json.extract! puppy, :id, :name, :desc, :img_url
  json.url puppy_url(puppy, format: :json)
end
