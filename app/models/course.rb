class Course < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :sections
end
