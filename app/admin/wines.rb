ActiveAdmin.register Wine do
  menu label: "ワイン"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :winename, :winename_kana, :purchase_price, :salling_price, :comment, :country_id, :state_id, :bio_id, :stock, :onlist, :wholesaler_id, :winary_id, :tag_list, :winaryname, :winaryname_kana,:image, 
  grapes_attributes: [:id, :grapename1,:grapename2, :grapename3, :grapename4, :grapename5]
  # wine_grapes_attributes: [:id, :wine_id, :grape_id]
  #
  # or
  #
  # permit_params do
  #   permitted = [:winename, :winename_kana, :purchase_price, :salling_price, :comment, :country_id, :state_id, :bio_id, :stock, :onlist, :wholesaler_id, :winary_id, :tag_list, :winaryname, :winaryname_kana, :grapename1, :grapename2, :grapename3, :grapename4, :grapename5, grapes_attributes: [:id, :grapename1]]

  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  

  # form do |f|
  #   f.inputs 'ワイン登録' do
  #     f.input :winename
  #     f.input :winename_kana
  #     f.input :purchase_price
  #     f.input :salling_price
  #     f.input :comment
  #   end
  #   f.inputs do
  #       f.has_many :grapes do|t|
  #         t.input :grapename1
  #       end
  #       f.has_many :grapes do|t|
  #         t.input :grapename2
  #       end
  #       f.has_many :grapes do|t|
  #         t.input :grapename3
  #       end
  #     f.input :onlist, as: :select
  #   end

      
  
  #   f.actions
  
  # end



    
  
end
