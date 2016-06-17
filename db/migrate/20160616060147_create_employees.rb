class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :nombre
      t.string :apellido
      t.integer :dni

      t.timestamps null: false
    end
  end
end
