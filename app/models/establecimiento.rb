class Establecimiento < ActiveRecord::Base
  attr_accessible :ambito, :anexo, :codigo_jurisdiccional, :cue, :cue_anexo, :domicilio, :localidad_id, :nombre, :sector

  belongs_to :localidad

  has_many :persona_establecimientos
  has_many :personas, :through => :persona_establecimientos

  def to_s
  	"#{ self.nombre }"
  end
  
end
