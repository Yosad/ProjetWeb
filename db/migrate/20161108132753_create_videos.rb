class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.integer :place
      t.string :video_link
      t.belongs_to :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
