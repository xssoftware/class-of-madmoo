class CreateWorkAssignments < ActiveRecord::Migration
  def change
    create_table :work_assignments do |t|
      t.references :user, index: true
      t.references :project, index: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
