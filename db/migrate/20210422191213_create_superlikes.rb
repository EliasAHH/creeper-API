class CreateSuperlikes < ActiveRecord::Migration[6.1]
  def change
    create_table :superlikes do |t|
      t.integer :super_liker_id
      t.integer :super_likee_id

      t.timestamps
    end
  end
end
