class WelcomeController < ApplicationController
  def reserva
  end

  def qs
  	@owners= Owner.all
  end

  def tarifas
  end

  def contacto
  end
end
