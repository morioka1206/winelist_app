class RedwinesController < ApplicationController
    def index
      # @wines = Wine.all
      # @s_wine = SWine.all
      @r_wine = RWine.all
      # @w_wine = WWine.all
      # @o_wine = OWine.all
    end
  
    def new
      # @wine = Wine.new
      # @s_wine = SWine.new
      @r_wine = RWine.new
      @w_wine = WWine.new
      @o_wine = OWine.new
      # @wine_winary = WineWinary.new
      # @swine_winary = SwineWinary.new
      @rwine_winary = RwineWinary.new
      # @wwine_winary = WwineWinary.new
      # @owine_winary = OwineWinary.new
      render "wines/#{params[:name]}"
    end
  
    def create
      # @wine_winary = WineWinary.new(wine_params)
      # @swine_winary = SwineWinary.new(swine_params)
      # @wwine_winary = WwineWinary.new(wwine_params)
      @rwine_winary = RwineWinary.new(rwine_params)
      # @owine_winary = OwineWinary.new(owine_params)
      
      if @ewine_winary.save
        redirect_to root_path
      end
    end
  
    def show
      # @wines = Wine.find(params[:id])
      @s_wines = SWine.find(params[:id])
      @r_wines = RWine.find(params[:id])
      @o_wines = OWine.find(params[:id])
    end
  
    private
    
    # def wine_params
    #   params.require(:wine_winary).permit(:winename, :winename_kana, :winaryname, :winaryname_kana,
    #   :purchase_price, :salling_price, :bio_id, :country_id, :state_id, :comment, :stock, :onlist, :image, :winaryname, :winaryname_kana, :name,
    #   :winary_id, :wholesaler_id, :tag_list, :grapename1, :grapename2, :grapename3, :grapename4, :grapename5 )
    # end
  
    # def swine_params
    #   params.require(:swine_winary).permit(:winename, :winename_kana, :winaryname, :winaryname_kana,
    #   :purchase_price, :salling_price, :bio_id, :country_id, :state_id, :comment, :stock, :onlist, :image, :winaryname, :winaryname_kana, :name,
    #   :winary_id, :wholesaler_id, :tag_list, :grapename1, :grapename2, :grapename3, :grapename4, :grapename5 )
    # end
  
    # def wwine_params
    #   params.require(:wwine_winary).permit(:winename, :winename_kana, :winaryname, :winaryname_kana,
    #   :purchase_price, :salling_price, :bio_id, :country_id, :state_id, :comment, :stock, :onlist, :image, :winaryname, :winaryname_kana, :name,
    #   :winary_id, :wholesaler_id, :tag_list, :grapename1, :grapename2, :grapename3, :grapename4, :grapename5 )
    # end
  
    def rwine_params
      params.require(:rwine_winary).permit(:winename, :winename_kana, :winaryname, :winaryname_kana,
      :purchase_price, :salling_price, :bio_id, :country_id, :state_id, :comment, :stock, :onlist, :image, :winaryname, :winaryname_kana, :name,
      :winary_id, :wholesaler_id, :grapename1, :grapename2, :grapename3, :grapename4, :grapename5 )
    end
  
    # def owine_params
    #   params.require(:owine_winary).permit(:winename, :winename_kana, :winaryname, :winaryname_kana,
    #   :purchase_price, :salling_price, :bio_id, :country_id, :state_id, :comment, :stock, :onlist, :image, :winaryname, :winaryname_kana, :name,
    #   :winary_id, :wholesaler_id, :tag_list, :grapename1, :grapename2, :grapename3, :grapename4, :grapename5 )
    # end
    
end
