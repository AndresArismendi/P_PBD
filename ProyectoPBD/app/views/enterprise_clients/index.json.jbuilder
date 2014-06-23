json.array!(@enterprise_clients) do |enterprise_client|
  json.extract! enterprise_client, :id, :run_cli, :rut_ent, :nom_cli, :apells_cli, :tel1_cli, :tel2_cli, :email_cli
  json.url enterprise_client_url(enterprise_client, format: :json)
end
