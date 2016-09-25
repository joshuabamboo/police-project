class CreateCopVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :cop_videos do |t|
      t.references :cop, foreign_key: true
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
