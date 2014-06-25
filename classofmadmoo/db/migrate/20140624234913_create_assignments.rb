class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :work_assignment, index: true
      t.references :user, index: true
      t.references :project, index: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
