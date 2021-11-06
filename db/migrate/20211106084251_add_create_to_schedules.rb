class AddCreateToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :memo, :string
  end
end
