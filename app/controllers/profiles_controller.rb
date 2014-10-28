class ProfilesController < ApplicationController
 layout 'flaty'
  def new
  	if !Profile.exists?(current_user.id)
  		@profile = Profile.new
      @profile.user = User.find(current_user.id)
  	else
  		redirect_to(:action => "show")
  	end
  end

  def create
  	@profile = Profile.new(profile_params)
    @profile.user = User.find(current_user.id)

  	if @profile.save
  		flash[:success] = "Profile has been created successfully!"
  	else
  		flash[:error] = "Something went wrong!"
  	end
  	redirect_to root_path
  	
  end

  def show
  	if  Profile.exists?(params[:id])
  		@profile = Profile.find(params[:id])
  	else
  		redirect_to(:action => "new")
  	end
  	  		
  
  end

  def edit
    @profile = User.find(current_user.id).profile
    

  end
  def update
      @profile = Profile.find(params[:id])
      if @profile.update_attributes(params[:profile])
         redirect_to :action => 'show', :id => @profile
      else
         render :action => 'show'
      end
    
  end
  def delete

  end

  def destroy
    profile = Profile.find(params[:id])
    profile.destroy
    flash[:notice] = "Profile has been deleted!"
    redirect_to root_path
  end
  private
  	def profile_params
  		params.require(:profile).permit(:user_id, :first_name, :last_name, :birthday, :about_me, :location, :avatar)
  	end 
   

end
