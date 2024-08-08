class UserSessionsController < ApplicationController
    def new; end

    def create
        @user = login(params[:email], params[:password])

        if @user
            flash[:notice] = "User successfully logined!"
            redirect_to root_path
        else
            flash[:alert] = "There was an error creating the session."
            render :new
        end
    end

    def destroy
    logout
    redirect_to root_path, status: :see_other
    end
    

end
