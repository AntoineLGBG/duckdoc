json.extract! duckmon, :id, :image, :health_point, :name, :damages, :description, :attack_name, :attack_description, :created_at, :updated_at
json.url duckmon_url(duckmon, format: :json)
