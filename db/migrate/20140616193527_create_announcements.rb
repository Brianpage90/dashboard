class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.references :admin
      t.date :publish_on
      t.date :expire_on
      t.boolean :critical_flag
      t.text :body
      t.string :title

      t.timestamps
    end
  end
end
