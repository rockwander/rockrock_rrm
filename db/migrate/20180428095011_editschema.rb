class Editschema < ActiveRecord::Migration[5.1]
  def change
    remove_reference :companies,:categories ,foreign_key: true
    add_reference :companies,:category ,foreign_key: true

  end
end
