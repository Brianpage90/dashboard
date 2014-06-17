class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :admin
      t.date :event_date
      t.time :event_time
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
