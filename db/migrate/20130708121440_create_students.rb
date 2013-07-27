class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
       t.string :first_name
       t.string :last_name
       t.string :middle_initial
       t.string :section
       t.string :course_id
       t.string :gender
       t.string :caste
       t.integer :religion_id
       t.string :community
       t.datetime :birth_date
       t.datetime :admission_date
       t.string :admission_no
       t.boolean :is_active ,:default=>true
       t.string :parent_name
       t.string :blood_group
       t.string :nationality
       t.string :image
       t.text :address
       t.string :street
       t.string :city
       t.string :pincode
       t.string :state
       t.string :country
       t.string :contact_no_one
       t.string :contact_no_two
       t.string :immidiate_contact_no
       t.string :email
      t.timestamps
    end
  end
end
