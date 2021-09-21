class CreateSlots < ActiveRecord::Migration[6.1]
  def change
    create_table :slots do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.datetime :begin_at
      t.datetime :end_at
      t.integer :duration
      t.timestamps
    end
  end
end
