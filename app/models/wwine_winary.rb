class WwineWinary
  include ActiveModel::Model
  attr_accessor :winename, :winename_kana, :winaryname, :winaryname_kana, :salling_price, :purchase_price, :comment,:bio_id, :country_id, :state_id, :stock, :onlist, :winary_id, :image, :name, :wholesaler_id, :tag_list, :grapename1, :grapename2, :grapename3, :grapename4, :grapename5, :type_id

  with_options presence: true do
    validates :winename
    validates :winename_kana
    validates :salling_price
    validates :stock
    validates :winaryname
    validates :winaryname_kana
  end

  def save
    winary = Winary.where(winaryname: winaryname, winaryname_kana: winaryname_kana).first_or_initialize
    # winary = Winary.new(winaryname: winaryname)
    winary.save

    grape = Grape.where(grapename1: grapename1, grapename2: grapename2, grapename3: grapename3, grapename4: grapename4, grapename5: grapename5).first_or_initialize
    grape.save
    
    wholesaler = Wholesaler.where(name: name).first_or_initialize
    wholesaler.save

    wine = WWine.new(winename: winename, winename_kana: winename_kana, salling_price: salling_price, purchase_price: purchase_price, country_id: country_id, state_id: state_id, bio_id: bio_id, comment: comment, stock: stock, winary_id: winary.id, wholesaler_id: wholesaler.id, onlist: onlist)
    wine.save

    WineGrape.create(wine_id: wine.id, grape_id: grape.id)
  end
end