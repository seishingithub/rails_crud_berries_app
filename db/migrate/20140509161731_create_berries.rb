class CreateBerries < ActiveRecord::Migration
  def change
    create_table :berries do |t|
      t.string :berry_type
      t.string :berry_color
      t.integer :berry_rating
    end
  end
end
