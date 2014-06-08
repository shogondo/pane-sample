class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :expiry_date
      t.timestamps
    end
  end
end
