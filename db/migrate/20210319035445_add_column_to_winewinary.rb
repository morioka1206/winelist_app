class AddColumnToWinewinary < ActiveRecord::Migration[6.0]
  def change
    add_reference :winaries, :s_wine, foreign_key: true
    add_reference :winaries, :r_wine, foreign_key: true
    add_reference :winaries, :w_wine, foreign_key: true
    add_reference :winaries, :o_wine, foreign_key: true
  end
end
