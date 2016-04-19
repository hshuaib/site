class AddNoOfEmployeesToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :noOfEmployees, :int
  end
end
