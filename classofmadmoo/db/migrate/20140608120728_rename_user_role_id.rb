class RenameUserRoleId < ActiveRecord::Migration
  def change
    rename_column :users, :role_id, :user_role_id
  end
end
