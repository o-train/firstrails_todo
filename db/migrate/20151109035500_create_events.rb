class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :plan_date
      t.time :plan_time
      t.text :descr
      t.boolean :alarm
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
