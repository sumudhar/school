class Section < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :course
end
