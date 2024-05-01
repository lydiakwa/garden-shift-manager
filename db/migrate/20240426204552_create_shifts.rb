class CreateShifts < ActiveRecord::Migration[7.1]
  def change
    create_table :shifts do |t|
      t.string :title, null: false
      t.string :comment
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.integer :visitor_count, null: false, default: 0

      t.timestamps
    end
  end
end
