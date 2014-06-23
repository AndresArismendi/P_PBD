json.array!(@bill_details) do |bill_detail|
  json.extract! bill_detail, :id, :id_bill, :id_conc, :monto_det_fact
  json.url bill_detail_url(bill_detail, format: :json)
end
