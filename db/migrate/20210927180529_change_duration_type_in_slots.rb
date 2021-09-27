class ChangeDurationTypeInSlots < ActiveRecord::Migration[6.1]
  def change
    change_column :slots, :duration, :string
  end
end
