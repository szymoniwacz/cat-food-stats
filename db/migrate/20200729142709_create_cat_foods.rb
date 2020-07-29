class CreateCatFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_foods do |t|
      t.string :name
      t.string :ingredients

      t.timestamps
    end
  end
end
