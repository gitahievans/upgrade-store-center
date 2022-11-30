class AdminsController < ApplicationController

    def create 
        admin = Admin.create(admin_params)
        render json: admin, status: :created
    end

    def login_admin 
        admin = Admin.find_by(name: params[:name])
        if admin&.authenticate(params[:password])
            session[:admin_id] ||= admin.id
            render json: admin, status: :created
        else 
            render json: {error: "User does not exist"}, status: :unauthorized
        end
    end


    private

    def admin_params 
        params.permit(:name, :email, :password)
    end
end
