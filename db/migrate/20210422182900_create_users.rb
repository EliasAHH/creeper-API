class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :desc
      t.string :image
      t.integer :age
      t.timestamps
    end
  end
end
