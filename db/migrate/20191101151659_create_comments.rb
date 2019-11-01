class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :commenter, null: false
      t.string :email, null: false
      t.text :content, null: false
      t.references :note, null: false, foreign_key: true

      t.datetime :created_at, null: false
    end
  end
end
