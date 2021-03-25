ActiveAdmin.register Winary do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :winaryname, :winaryname_kana, :wine_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:winaryname, :winaryname_kana, :wine_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
