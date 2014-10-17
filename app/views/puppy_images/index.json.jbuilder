json.array!(@puppy_images) do |puppy_image|
  json.extract! puppy_image, :id, :puppy_id, :desc
  json.url puppy_image_url(puppy_image, format: :json)
end
