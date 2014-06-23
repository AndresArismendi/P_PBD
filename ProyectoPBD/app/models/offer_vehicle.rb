class OfferVehicle < ActiveRecord::Base

    self.primary_key = :id_off_veh

    belongs_to :vehicle, :class_name => 'Vehicle', :foreign_key => :id_veh    
    belongs_to :scheduling_block, :class_name => 'SchedulingBlock', :foreign_key => :id_block    
    has_many :schedulings, :class_name => 'Scheduling', :foreign_key => :id_off_veh    
end
