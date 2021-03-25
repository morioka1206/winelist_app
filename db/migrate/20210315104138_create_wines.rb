class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string  :winename,           null: false
      t.string  :winename_kana,      null: false
      t.string  :winaryname,         null: false
      t.string  :winaryname_kana,    null: false
      t.integer :purchase_price
      t.integer :salling_price,        null: false
      t.text    :comment,             null: false
      t.integer :country_id,         null: false
      t.integer :state_id,           null: false
      t.integer :bio_id
      t.integer :stock,              null: false
      t.timestamps
    end
  end
end
