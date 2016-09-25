class CreateCivilians < ActiveRecord::Migration[5.0]
  def change
    create_table :civilians do |t|
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.string :race
      t.integer :age
    end
  end
end
