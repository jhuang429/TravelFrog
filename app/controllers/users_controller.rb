class UsersController < ApplicationController
    before_action :find_user, only: [:show, :update]
    before_action :authorized, except: [:new, :show, :create]
    
    def show
        
    end

    def profile
        @user = User.find_by(id: session[:user_id])
        redirect_to user_path(@user)
    end

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user)

        else 
            flash[:errors] = user.errors.full_messages

            redirect_to new_user_path 
        end 
    end

    def edit
        @user  = User.find_by(id: session[:user_id])
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def delete
    end

        




    private 

    def user_params
        params.require(:user).permit(:first_name, :last_name, :user_name, :password, :bio, :photo, :hometown, :age, :airport)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
