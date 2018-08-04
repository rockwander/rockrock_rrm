class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_column :companies,:position ,:integer
    add_reference :companies,:categories ,foreign_key: true
  end
end
