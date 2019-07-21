class CreateProductCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :product_categories do |t|
      t.string :titulo
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
