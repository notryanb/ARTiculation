class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url, null: false
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
