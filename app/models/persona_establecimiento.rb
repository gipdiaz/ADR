class PersonaEstablecimiento < ActiveRecord::Base
  attr_accessible :establecimiento_id, :persona_id
  belongs_to :establecimiento
  belongs_to :persona
end
