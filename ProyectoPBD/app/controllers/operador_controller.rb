require 'open-uri'
require 'json'
require 'net/http'

class OperadorController < ApplicationController
  def index
	$result = { "destination_addresses" => ["Calle1,SC,Ch"], "origin_addresses" => ["LJ, EC, RM"], "rows" => [{"elements" => [{"distance" => {"text" => "10km", "value" => 1000}, "duration" => {"text" => "15min", "value" => 903}, "status" => "OK"}]}], "status" => "OK"}	
  	@origen = params[:origen]
  	@destino = params[:destino]
	@url_base = "http://maps.googleapis.com/maps/api/distancematrix/json?origins=#{@origen}&destinations=#{@destino}&mode=driving&language=es-ES&type=json".delete(' ')
	@resp = Net::HTTP.get_response(URI.parse(@url_base))
	@data = @resp.body
	$result = JSON.parse(@data)
	
	@destination_addresses = $result["destination_addresses"]
	@origin_addresses = $result["origin_addresses"]
	@status = $result['status']
	#@distance = $result["rows"][0]
	if (@status == "OK")
		@distance = $result["rows"][0]["elements"][0]["distance"]["value"]
		@duration = $result["rows"][0]["elements"][0]["duration"]["value"]
		@duration_min = (@duration%60).round
	end
	
  end

  def solicitudes



  end

  def disp_conductor
  end

  def usuarios_reg
  end
end
