class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :nome
      t.text :descricao
      t.integer :status
      t.float :delivery_tax
      t.string :estado
      t.string :cidade
      t.string :rua
      t.string :bairro
      t.string :numero
      t.string :complemento
      t.string :referencia
      t.string :cep
      t.float :latitude
      t.float :longitude
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
