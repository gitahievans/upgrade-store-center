class StaffController < ApplicationController
wrap_parameters format: []
    def index 
        staff = Staff.all
        render json: staff, status: :ok
    end

    # def show 
    #     staff = Staff.find(params[:id])
    #     render json: staff, status: :ok
    # end


   def create 

        admin = Admin.find(session[:admin_id])
        staff = admin.staffs.create!(staff_params)
        if staff.valid?
            render json: staff, status: :created
        else
            render json: {error: "Incorrect details"}, status: :unprocessable_entity
        end
    end

    def login_staff 
        staff = Staff.find_by(username: params[:username])
        if staff&.authenticate(params[:password])
            session[:staff_id] ||= staff.id
            render json: staff, status: :created
        else 
            render json: {error: "User does not exist"}, status: :unauthorized
        end
    end

    def destroy 
        session.delete(:staff_id)
        render json: {message: "Logged out successfully"}, status: :ok
    end

    private
    def staff_params 
        params.permit(:username, :password, :email)
    end

end
