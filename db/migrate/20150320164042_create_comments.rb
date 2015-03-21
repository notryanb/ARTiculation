class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.belongs_to :user
      t.belongs_to :photo
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
