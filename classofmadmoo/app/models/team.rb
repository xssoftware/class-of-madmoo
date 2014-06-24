class Team < ActiveRecord::Base
  has_many :projects
  has_many :users
  has_many :forums  
end
