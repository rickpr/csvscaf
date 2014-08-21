class CreateCourseras < ActiveRecord::Migration
  def change
    create_table :courseras do |t|
      t.string :cid
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
