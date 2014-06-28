class Owner < ActiveRecord::Base

    self.primary_key = :run_own

    has_many :vehicles, :class_name => 'Vehicle', :foreign_key => :run_own    
end