class CreateUserRounds < ActiveRecord::Migration[7.0]
  def change
    create_table :user_rounds do |t|
      t.integer :user_id
      t.integer :round_id
      t.integer :score
      t.integer :banana_count

      t.timestamps
    end
  end
end
