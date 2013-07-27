class Student < ActiveRecord::Base
  # attr_accessible :title, :body
  validates    :sur_name,:name,:section,:course_id,:gender,:caste,:religion_id,
					  :community,:birth_date,:admission_date,:admission_no,:father_name,:nationality,:image,:address,:street,
					  :city,:pincode,:state,:country,:contact_no_one,:immidiate_contact_no,:mother_name,
					  :occupation,:moles,:annual_income ,
					  :presence => true 
					  
					  #,:aadhar,:contact_no_two 
  mount_uploader :image, StudentImageUploader
end
