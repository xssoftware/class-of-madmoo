class Assignment < ActiveRecord::Base
  belongs_to :work_assignment
  belongs_to :user
  belongs_to :project
end
