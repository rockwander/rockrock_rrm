class CreateJobOpenings < ActiveRecord::Migration[5.1]
  def change
    create_table :job_openings do |t|
      t.string :title
      t.string :category
      t.text :description
      t.references :company ,index:true
      t.string :location

      t.timestamps
    end
  end
end
