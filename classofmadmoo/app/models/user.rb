class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :user_role
  belongs_to :team
  
  before_save do
    self.user_role_id = UserRole.where(name: "student").first.id if self.user_role_id.blank?
  end
    
  def profesor?
    self.user_role.profesor? if !self.user_role.blank?
  end
  
  def student?
    self.user_role.student? if !self.user_role.blank?
  end
end
