class Company < ApplicationRecord
  has_many :job_openings
  has_many :notes
  has_many :employees
  has_one :category
end
