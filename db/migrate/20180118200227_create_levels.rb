class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.string :levelName
      t.timestamps
    end
  end
end
