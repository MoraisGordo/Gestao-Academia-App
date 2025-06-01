class CreateFuncionarios < ActiveRecord::Migration[8.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.string :funcao

      t.timestamps
    end
  end
end
