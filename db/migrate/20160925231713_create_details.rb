class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.references :video, foreign_key: true
      t.string :description
      t.datetime :date
      t.string :location
      t.boolean :graphic
    end
  end
end
