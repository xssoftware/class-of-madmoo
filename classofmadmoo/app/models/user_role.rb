class UserRole < ActiveRecord::Base
  has_many :users
  
  def profesor?
    return true if self.name == "profesor"
    return false
  end
  
  def student?
    return true if self.name == "student"
    return false
  end
end
