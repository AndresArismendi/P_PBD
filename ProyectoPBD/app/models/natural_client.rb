class NaturalClient < ActiveRecord::Base

    self.primary_key = :run_cli

    has_many :schedulings, :class_name => 'Scheduling'    
    has_many :travel_requests, :class_name => 'TravelRequest'    
end
