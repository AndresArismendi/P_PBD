class ConductorController < ApplicationController
  def index
  	@travels = Travel.all
  	@travel_requests = TravelRequest.all
   end

  def calendario

  end
end
