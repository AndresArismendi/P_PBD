class BasePrice < ActiveRecord::Base

    self.primary_key = :id_base_pr

	validates_presence_of :val_base, :message => "Falta valor base" 
	validates_presence_of :ini_val_base, :message => "Falta fecha de inicio"
	validates_presence_of :fin_val_base, :message => "Falta fecha de término" 
end
