class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.integer :note
      t.integer :stock

      t.timestamps null: false
    end
  end
end
