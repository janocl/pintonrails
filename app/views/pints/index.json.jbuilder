json.array!(@pints) do |pint|
  json.extract! pint, :id, :title, :description, :image
  json.url pint_url(pint, format: :json)
end
