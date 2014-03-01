json.array!(@leads2s) do |leads2|
  json.extract! leads2, :id, :name, :status, :lead_developer, :note, :hourly_rate, :deadline
  json.url leads2_url(leads2, format: :json)
end
