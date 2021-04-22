class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :likee_id
      t.integer :liker_id

      t.timestamps
    end
  end
end
