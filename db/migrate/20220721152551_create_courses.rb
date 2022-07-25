class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :nombre
      t.text :descripcion
      t.datetime :fecha

      t.timestamps
    end
  end
end
