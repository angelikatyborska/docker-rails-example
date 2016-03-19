class CreateGuestbookEntries < ActiveRecord::Migration
  def change
    create_table :guestbook_entries do |t|
      t.text :body

      t.timestamps null: false
    end
  end
end
