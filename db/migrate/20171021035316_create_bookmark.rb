class CreateBookmark < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks do |t|
      t.integer :page, null: false
      t.string :description, null: false
      t.references :book, foreign_key: true
    end
  end
end
