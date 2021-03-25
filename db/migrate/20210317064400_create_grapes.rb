class CreateGrapes < ActiveRecord::Migration[6.0]
  def change
    create_table :grapes do |t|
      t.string :grapename1, null: false, uniqueness: true
      t.string :grapename2
      t.string :grapename3
      t.string :grapename4
      t.string :grapename5
      t.timestamps
    end
  end
end
