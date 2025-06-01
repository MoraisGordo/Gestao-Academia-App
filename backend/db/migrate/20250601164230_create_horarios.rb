class CreateHorarios < ActiveRecord::Migration[8.0]
  def change
    create_table :horarios do |t|
      t.time :inicio
      t.time :fim
      t.string :tipo
      t.string :dia

      t.timestamps
    end
  end
end
