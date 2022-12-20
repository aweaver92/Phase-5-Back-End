class CreateApes < ActiveRecord::Migration[7.0]
  def change
    create_table :apes do |t|
      t.integer :user_id
      t.string :color
      t.timestamps
    end
  end
end
