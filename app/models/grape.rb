class Grape < ApplicationRecord
  has_many :wines, through: :wine_grapes
  has_many :w_wines, through: :wine_grapes
  has_many :r_wines, through: :wine_grapes
  has_many :o_wines, through: :wine_grapes
  has_many :s_wines, through: :wine_grapes
  has_many :wine_grapes
  # has_and_belongs_to_many :wines
  # accepts_nested_attributes_for :wines, allow_destroy: true
end
