class CreateCivilianVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :civilian_videos do |t|
      t.references :civilian, foreign_key: true
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
