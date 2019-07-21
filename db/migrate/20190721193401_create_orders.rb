class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :nome
      t.string :numero_telefone
      t.float :valor_total
      t.string :endereco
      t.integer :status, default: 0
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
