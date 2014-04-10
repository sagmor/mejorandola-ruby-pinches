json.array!(@pins) do |pin|
  json.extract! pin, :id, :title, :description, :link
  json.image pin.image.url
  json.url pin_url(pin, format: :json)
end
