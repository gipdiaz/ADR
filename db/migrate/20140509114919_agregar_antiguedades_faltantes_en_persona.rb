class AgregarAntiguedadesFaltantesEnPersona < ActiveRecord::Migration
  def up
  	add_column :personas, :antiguedad_contratos, :integer
  	add_column :personas, :antiguedad_horas, :integer
  	add_column :personas, :antiguedad_cargos_docente, :integer
  	add_column :personas, :antiguedad_cargos_aux, :integer
  end

  def down
   	remove_column :personas, :antiguedad_contratos
  	remove_column :personas, :antiguedad_horas
  	remove_column :personas, :antiguedad_cargos_docente
  	remove_column :personas, :antiguedad_cargos_aux
  end
end
