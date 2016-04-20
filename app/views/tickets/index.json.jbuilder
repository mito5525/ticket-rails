json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :title, :descripution, :priority, :status
  json.url ticket_url(ticket, format: :json)
end
