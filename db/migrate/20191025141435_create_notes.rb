class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title, null: false
      t.text :content

      t.timestamps

      t.index :title, unique: true
    end
  end
end
