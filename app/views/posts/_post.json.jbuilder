json.extract! post, :id, :post_id, :caption, :created_at, :updated_at
json.url post_url(post, format: :json)
