class AgregarCamposDeAdrAPersona < ActiveRecord::Migration
  def up
  	add_column :personas, :ingresar_planta, :boolean
  	add_column :personas, :cant_contratos, :integer
  	add_column :personas, :cant_horas, :integer
  	add_column :personas, :cant_cargos_docente, :integer
  	add_column :personas, :cant_cargos_aux, :integer
  	add_column :personas, :otra_contratacion, :boolean
  	add_column :personas, :cual_contratacion, :string
  end

  def down
  	remove_column :personas, :ingresar_planta
  	remove_column :personas, :cant_contratos
  	remove_column :personas, :cant_horas
  	remove_column :personas, :cant_cargos_docente
  	remove_column :personas, :cant_cargos_aux
  	remove_column :personas, :otra_contratacion
  	remove_column :personas, :cual_contratacion
  end
end
