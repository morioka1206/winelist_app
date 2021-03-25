class AddColumnToWineWinary < ActiveRecord::Migration[6.0]
  def change
    add_reference :wine_grapes, :s_wine, foreign_key: true
    add_reference :wine_grapes, :r_wine, foreign_key: true
    add_reference :wine_grapes, :w_wine, foreign_key: true
    add_reference :wine_grapes, :o_wine, foreign_key: true
  end
end
