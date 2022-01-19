class UsersController < ApplicationController
    def new 
        @user = User.new
    end

    def index
        @user = User.new
    end
    
    def show
        @user = User.all
    end

    def create
        @user = User.new(users_params)
        #   debugger
            if @user.save
                respond_to do |format|
                    format.html {redirect_to  user_path(@user)}
                end
            else
            render :index
            end
    
    end      

    def edit
    end
    
    def destroy
        @user.find(params[:id]).destroy
      redirect_to :action => 'show' , noitice: "logged out"
    end
    
    private
    def set_user
        @user = User.find(params[:id])
    end

    def users_params
        params.require(:user).permit(:email, :password)
    end
end
