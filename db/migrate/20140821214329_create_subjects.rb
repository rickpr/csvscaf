class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :cid
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
