class CreatePaginas < ActiveRecord::Migration[7.0]
  def change
    create_table :paginas do |t|
      t.string :name
      t.string :permalink
      t.integer :position
      t.boolean :visible
      t.text :content
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
