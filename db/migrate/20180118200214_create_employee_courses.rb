class CreateEmployeeCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_courses do |t|
      t.integer :employeeID
      t.integer :courseID
      t.references :employee, foreign_key: true
      t.references :course, foreign_key: true
      t.timestamps
    end
  end
end
