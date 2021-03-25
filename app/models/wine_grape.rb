class WineGrape < ApplicationRecord
  belongs_to :wine
  belongs_to :grape
  belongs_to :w_wine
  belongs_to :r_wine
  belongs_to :o_wine
  belongs_to :s_wine
end
