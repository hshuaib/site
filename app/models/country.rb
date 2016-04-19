class Country < ActiveRecord::Base
  has_many :applicants
  has_many :companies
end
