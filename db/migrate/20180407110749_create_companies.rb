class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :glassdoor
      t.string :linkedin
      t.string :company_website
      t.timestamps
    end
  end
end
