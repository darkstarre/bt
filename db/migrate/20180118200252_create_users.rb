class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :groupID
      t.integer :licenseID
      t.string :groupHint
      t.string :email
      t.string :password
      t.string :firstName
      t.string :lastName
      t.datetime :lastLogin
      t.datetime :created
      t.datetime :modified
      t.string :timezone
      t.integer :passwordExpires
      t.string :verifyToken
      t.integer :is_enabled
      t.integer :is_verified
      t.timestamps
    end
  end
end
