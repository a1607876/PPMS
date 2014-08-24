class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :submitter
      t.integer :length
      t.integer :type

      t.timestamps
    end
  end
end
