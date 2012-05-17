

class Task < ActiveRecord::Base
  attr_accessible :description, :priority
	
	validates_presence_of:description
	validates:priority, numericality:{greater_than:0}
  validates_uniqueness_of :description	
	
  before_validation :clean_description 
	#callbacks = sirve para que por medio de un metodo private especificar los detalles de la 			   		validacion.
	
	private
  def clean_description
		if self.description.present?	
    	self.description = self.description.strip.capitalize!
		end
  end
 	#strip = destruye o quita los espacios de antes o despues de la palabra.
end
