class CreateCops < ActiveRecord::Migration[5.0]
  def change
    create_table :cops do |t|
      t.string :first_name
      t.string :last_name
      t.string :badge_number
      t.string :sex
      t.string :race
    end
  end
end
