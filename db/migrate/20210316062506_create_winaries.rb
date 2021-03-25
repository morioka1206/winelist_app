class CreateWinaries < ActiveRecord::Migration[6.0]
  def change
    create_table :winaries do |t|
      t.string  :winaryname,         null: false
      t.string  :winaryname_kana,    null: false
      t.references :wine, foreign_key: true
      t.timestamps
    end
  end
end
