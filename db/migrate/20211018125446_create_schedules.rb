class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.string :text
      t.string :memo
      t.timestamps
    end
  end
end
