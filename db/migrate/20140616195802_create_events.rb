class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :event_date
      t.time :event_time
      t.string :title
      t.string :body
      t.string :publisher

      t.timestamps
    end
  end
end
