class Category < ApplicationRecord
  has_many :companies
  has_one :pipeline
end
