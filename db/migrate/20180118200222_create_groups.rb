class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :alias
      t.string :landing_url
      t.timestamps
    end
  end
end
