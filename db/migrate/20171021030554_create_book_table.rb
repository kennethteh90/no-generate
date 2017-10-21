class CreateBookTable < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name, null: false
      t.string :author, null: false
    end
  end
end
