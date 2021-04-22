class CreateDislikes < ActiveRecord::Migration[6.1]
  def change
    create_table :dislikes do |t|
      t.integer :dislikee_id
      t.integer :disliker_id
      
      t.timestamps
    end
  end
end
