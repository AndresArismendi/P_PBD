class TravelRequest < ActiveRecord::Base

    self.primary_key = :id_trav_req

    has_many :travels, :class_name => 'Travel', :foreign_key => :id_trav_req    
    belongs_to :client, :class_name => 'Client', :foreign_key => :run_cli    
end
