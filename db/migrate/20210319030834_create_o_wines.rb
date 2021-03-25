class CreateOWines < ActiveRecord::Migration[6.0]
  def change
    create_table :o_wines do |t|
      t.string  :winename,           null: false
      t.string  :winename_kana,      null: false
      t.references :winary, foreign_key: true
      t.integer :purchase_price
      t.integer :salling_price,        null: false
      t.text    :comment,             null: false
      t.integer :country_id,         null: false
      t.integer :state_id,           null: false
      t.integer :bio_id
      t.integer :stock,              null: false
      t.integer :type_id
      t.boolean :onlist
      t.references :wholesaler, foreign_key: true
      t.references :grape, foreign_key: true
      t.timestamps
    end
  end
end
