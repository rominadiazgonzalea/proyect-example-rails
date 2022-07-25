class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.integer :saldo

      t.timestamps
    end
  end
end
