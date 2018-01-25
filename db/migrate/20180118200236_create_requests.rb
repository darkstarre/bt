class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :requester
      t.integer :courseID
      t.string :pageName
      t.integer :statusID
      t.integer :levelID
      t.text :detail
      t.integer :assignTo
      t.text :solution
      t.integer :isReadyForQA
      t.integer :isQAVerified
      t.datetime :dateStampReadyQA
      t.string :platform
      t.string :browser
      t.string :version
      t.string :flash_version
      t.datetime :created
      t.datetime :modified
      t.string :applause_id

      t.references :course, foreign_key: true
      t.references :status, foreign_key: true
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end
