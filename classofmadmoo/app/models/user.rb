class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :user_role
  
  def profesor?
    self.user_role.profesor?
  end
  
  def student?
    self.user_role.student?
  end
end
