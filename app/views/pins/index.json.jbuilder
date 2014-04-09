json.array!(@pins) do |pin|
  json.extract! pin, :id, :title, :description, :image, :link
  json.url pin_url(pin, format: :json)
end
