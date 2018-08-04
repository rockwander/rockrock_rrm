class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.text :description
      t.references :company

      t.timestamps
    end
  end
end
