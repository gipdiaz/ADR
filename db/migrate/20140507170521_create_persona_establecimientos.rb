class CreatePersonaEstablecimientos < ActiveRecord::Migration
  def change
    create_table :persona_establecimientos do |t|
      t.integer :persona_id
      t.integer :establecimiento_id

      t.timestamps
    end
  end
end
