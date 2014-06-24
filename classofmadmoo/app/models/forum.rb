class Forum < ActiveRecord::Base
  belongs_to :team
  has_many :posts  
end
