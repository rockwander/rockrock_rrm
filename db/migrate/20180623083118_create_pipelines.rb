class CreatePipelines < ActiveRecord::Migration[5.1]
  def change
    create_table :pipelines do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
    add_reference :categories,:pipeline ,foreign_key: true
  end
end
