json.extract! entry, :id, :title, :content, :url, :author, :feed_id, :published, :created_at, :updated_at
json.url entry_url(entry, format: :json)