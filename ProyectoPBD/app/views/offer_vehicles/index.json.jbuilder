json.array!(@offer_vehicles) do |offer_vehicle|
  json.extract! offer_vehicle, :id, :id_veh, :id_block, :est_oferta_veh
  json.url offer_vehicle_url(offer_vehicle, format: :json)
end
