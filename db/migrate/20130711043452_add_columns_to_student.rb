class AddColumnsToStudent < ActiveRecord::Migration
  def change
	  add_column :students ,:mother_name, :string
	  add_column :students ,:occupation ,:string
	  add_column :students,:moles ,:text
	  add_column :students,:annual_income, :decimal, :precision=>13, :scale=>2, :default=>0.0
	  add_column :students ,:mother_tongue,:string
	  add_column :students ,:aadhar,:string 
	  add_column :students ,:medium ,:string
	  rename_column :students ,:parent_name,:father_name
	  rename_column :students ,:first_name ,:sur_name
	  rename_column :students ,:last_name,:name
	  remove_column :students,:middle_initial
	  
  end
end
