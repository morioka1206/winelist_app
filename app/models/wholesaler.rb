class Wholesaler < ApplicationRecord
  has_many :wines
  has_many :w_wines
  has_many :r_wines
  has_many :o_wines
  has_many :s_wines
end
