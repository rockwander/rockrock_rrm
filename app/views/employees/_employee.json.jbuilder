json.extract! employee, :id, :name, :phone, :email, :company, :location, :created_at, :updated_at
json.url employee_url(employee, format: :json)
