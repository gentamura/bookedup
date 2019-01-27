class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.datetime :book_day
      t.datetime :start_time
      t.datetime :end_time
      t.text :memo
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :tel
      t.integer :user_id

      t.timestamps
    end
  end
end
