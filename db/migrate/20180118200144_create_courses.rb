class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :courseName
      t.string :clientName
      t.datetime :accessed
      t.datetime :modified
      t.timestamps
    end
  end
end
