class Article < ActiveRecord::Base
  attr_accessible :content, :name, :published_on
  attr_accessor  :country_id, :state_id
end
