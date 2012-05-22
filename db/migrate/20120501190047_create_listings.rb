class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :item
      t.float :price
      t.string :location

      t.timestamps
    end
  end
end
