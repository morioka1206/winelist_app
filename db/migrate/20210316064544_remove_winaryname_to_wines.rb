class RemoveWinarynameToWines < ActiveRecord::Migration[6.0]
  def change
    remove_column :wines, :winaryname, :string
    remove_column :wines, :winaryname_kana, :string
    add_column :wines, :onlist, :boolean
    add_reference :wines, :wholesaler, foreign_key: true
  end
end
