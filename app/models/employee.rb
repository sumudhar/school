class Employee < ActiveRecord::Base
  # attr_accessible :title, :body
   attr_accessor  :country_id, :state_id
   
   mount_uploader :employee_image, EmpployerImageUploader
end
