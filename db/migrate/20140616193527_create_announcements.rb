class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.date :published_on
      t.date :expired
      t.boolean :critical_flag
      t.text :body
      t.string :title
      t.string :publisher

      t.timestamps
    end
  end
end
