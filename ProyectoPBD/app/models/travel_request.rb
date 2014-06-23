class TravelRequest < ActiveRecord::Base

    self.primary_key = :id_trav_req

    has_many :travels, :class_name => 'Travel', :foreign_key => :id_trav_req    
    belongs_to :enterprise_client, :class_name => 'EnterpriseClient', :foreign_key => :run_cli    
    belongs_to :natural_client, :class_name => 'NaturalClient', :foreign_key => :cli_run_cli    
end
