require 'digest'

class UsersController < ApplicationController
    include UsersHelper
      before_action :set_user, only: [ :show, :edit, :destroy, :update]
    def new 
        @users = User.new
    end

    def index
        @users = User.new
    end
    
    def show   
    end

    def show_list
    #    @users = User.all
    end

    def create
        if encode.save
            respond_to do |format|
                format.html { render :show}
            end
        else
            render :index
        end
    end    
    

    def login  
        password = Digest::MD5.hexdigest(params[:password])
        k =User.where(email: "#{params[:email]}", password: "#{password}")
        if k.size == 0
            render :index
        else
            render :show_list
            
        end
    end 

    def edit
    end
    
    def destroy
        if @user.destroy
            redirect_to :action => 'show_list' 
        end
    end
    
    private
    def set_user
        @user = User.find(params[:id])
    end

    def users_params
        params.require(:user).permit(:email, :password)
    end
end
