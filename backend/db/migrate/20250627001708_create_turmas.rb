class CreateTurmas < ActiveRecord::Migration[8.0]
  def change
    create_table :turmas do |t|
      t.timestamps
    end
  end
end
