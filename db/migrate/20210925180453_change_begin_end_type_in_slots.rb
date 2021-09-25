class ChangeBeginEndTypeInSlots < ActiveRecord::Migration[6.1]
  def change
    change_column :slots, :begin_at, :string
    change_column :slots, :end_at, :string
  end
end
