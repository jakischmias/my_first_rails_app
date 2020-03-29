class CreateCarrails < ActiveRecord::Migration[5.2]
  def change
    create_table :carrails do |t|
      t.string :generate
      t.string :scaffold
      t.string :car
      t.string :make
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
