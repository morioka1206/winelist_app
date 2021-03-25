class WWine < ApplicationRecord
  has_one_attached :image
  belongs_to :winary
  # has_many :winaries
  belongs_to :wholesaler
  # belongs_to :wine

  # has_and_belongs_to_many :grapes
  # accepts_nested_attributes_for :grapes, allow_destroy: true
  has_many :wine_grapes
  has_many :grapes, through: :wine_grapes
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :bio
  belongs_to_active_hash :country
  belongs_to_active_hash :state
end
