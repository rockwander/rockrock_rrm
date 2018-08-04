class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.string :phone
      t.string :email
      t.references :company
      t.string :location

      t.timestamps
    end
  end
end
