class Vehicle < ActiveRecord::Base

    self.primary_key = :id_veh

    has_many :assigneds, :class_name => 'Assigned', :foreign_key => :id_veh    
    has_many :offer_vehicles, :class_name => 'OfferVehicle', :foreign_key => :id_veh    
    belongs_to :owner, :class_name => 'Owner', :foreign_key => :run_own    
end
