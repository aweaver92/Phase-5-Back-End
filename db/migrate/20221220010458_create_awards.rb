class CreateAwards < ActiveRecord::Migration[7.0]
  def change
    create_table :awards do |t|
      t.integer :ape_id

      t.timestamps
    end
  end
end
