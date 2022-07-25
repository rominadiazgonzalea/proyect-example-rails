class Empleado < ActiveRecord::Migration[7.0]
  def change
    create_table :empleado do |t|
      t.string :nombre
      t.string :apellido
      t.string :direccion

      t.timestamps
      end
    end
  end

