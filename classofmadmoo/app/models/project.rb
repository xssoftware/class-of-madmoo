class Project < ActiveRecord::Base
  has_many :work_assignments 
  belongs_to :team
end
