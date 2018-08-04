json.extract! job_opening, :id, :title, :category, :description, :location, :created_at, :updated_at
json.url job_opening_url(job_opening, format: :json)
