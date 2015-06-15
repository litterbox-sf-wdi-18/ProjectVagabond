class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :title
      t.text :content
      t.integer :city_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
