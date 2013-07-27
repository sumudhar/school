class CreateEmployees < ActiveRecord::Migration
  def change
  create_table :employees do |t|
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.string :qualification
      t.string :experience
      t.string :previous_company
      t.text   :address
      t.text   :address_cur
      t.string :street
      t.string :street_cur
      t.string :city
      t.string :city_cur
      t.string :state
      t.string :state_cur
      t.string :pincode
      t.string :pincode_cur
      t.datetime :birth_date
      t.datetime :joining_date
      t.datetime :reliving_date
      t.boolean :is_active , default: true
      t.string :employee_image
      t.string :employee_no
      t.string :gender
      t.integer :department_id
      t.string :email
      t.string :immidiate_contactno
      t.string :phone
      t.string :phone_one
      t.string :marrital_status
      t.string :father_name
      t.string :mother_name
      t.string :nationality
      t.string :blood_group
      t.timestamps
    end
  end
end
