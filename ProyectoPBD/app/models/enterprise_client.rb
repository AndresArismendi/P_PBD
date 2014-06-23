class EnterpriseClient < ActiveRecord::Base

    self.primary_key = :run_cli

    belongs_to :external_enterprise, :class_name => 'ExternalEnterprise', :foreign_key => :rut_ent    
    has_many :schedulings, :class_name => 'Scheduling', :foreign_key => :run_cli    
    has_many :travel_requests, :class_name => 'TravelRequest', :foreign_key => :run_cli    
end
