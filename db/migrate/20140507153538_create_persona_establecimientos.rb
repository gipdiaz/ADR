class CreatePersonaEstablecimientos < ActiveRecord::Migration
  def change
    create_table :persona_establecimientos do |t|

      t.timestamps
    end
  end
end
