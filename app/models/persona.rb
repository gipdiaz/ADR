class Persona < ActiveRecord::Base
  attr_accessible :apellidos, :calle, :depto, :estado_civil_id, :fecha_nacimiento, :localidad_id, :nombres, :nro_calle, :nro_documento, :piso, :sexo_id, :tipo_documento_id
  attr_accessible :situacion_revista_id,:telefono_contacto, :email
  attr_accessible :ingresar_planta, :cant_contratos, :cant_horas, :cant_cargos_docente, :cant_cargos_aux, :otra_contratacion, :cual_contratacion
  attr_accessible :antiguedad_contratos, :antiguedad_horas, :antiguedad_cargos_docente, :antiguedad_cargos_aux

  belongs_to :tipo_documento
  belongs_to :localidad
  belongs_to :estado_civil
  belongs_to :sexo
  belongs_to :situacion_revistum

  validates :nombres, :presence => true
  validates :apellidos, :presence => true
  validates :nro_documento, :presence => true, uniqueness: true, :numericality => { :greater_than_or_equal_to => 1000000 }
  validates_numericality_of :nro_documento, :only_integer => true

  validates_numericality_of :nro_calle, :only_integer => true

  attr_accessible :persona_establecimientos_attributes
  attr_accessible :persona_attributes

  attr_accessible :establecimiento_tokens
  has_many :persona_establecimiento, :dependent => :destroy
  has_many :establecimientos, :through => :persona_establecimiento
  attr_reader :establecimiento_tokens


  def establecimiento_tokens=(ids)
    self.establecimiento_ids = ids.split(",")
  end

  def to_s
  	"#{ self.nombres } + #{ self.apellidos }"
  end

end