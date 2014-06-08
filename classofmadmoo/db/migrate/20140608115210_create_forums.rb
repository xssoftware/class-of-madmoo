class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.references :team, index: true
      t.string :name

      t.timestamps
    end
  end
end
