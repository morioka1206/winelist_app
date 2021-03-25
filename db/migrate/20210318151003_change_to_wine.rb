class ChangeToWine < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :type_id, :integer
  end
end
