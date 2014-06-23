class Scheduling < ActiveRecord::Base
    #self.table_name = 'scheduling'


    belongs_to :offer_vehicle, :class_name => 'OfferVehicle', :foreign_key => :id_off_veh    
    belongs_to :driver, :class_name => 'Driver', :foreign_key => :run_driv    
    belongs_to :enterprise_client, :class_name => 'EnterpriseClient', :foreign_key => :run_cli    
    belongs_to :natural_client, :class_name => 'NaturalClient', :foreign_key => :cli_run_cli    
end
