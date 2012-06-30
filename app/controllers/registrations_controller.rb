class RegistrationsController < Devise::RegistrationsController
  #def create
  #  super
  #  session[:omniauth] = nil unless @user.new_record?
  #end
 
  def update
    @user = User.find(current_user.id)
    if @user.update_attributes(params[:user])
      # Sign in the user by passing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to home_my_list_path
    else
      render "edit"
    end
  end


  private
  
  def build_resource(*args)
    super
    if session[:omniauth]
      @user.apply_omniauth(session[:omniauth])
#      @user.valid?
    end
  end
end

