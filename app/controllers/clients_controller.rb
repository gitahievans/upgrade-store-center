class ClientsController < ApplicationController

    def index 
        clients = Client.all
        render json: clients, status: :ok
    end
    
    def create
        client = Client.create!(client_params)
        render json: client, status: :created
    rescue ActiveRecord::RecordInvalid => e
        render json: {errors: e.record.errors.full_messages}, status: :unprocessable_entity
        
    end

    def login_client
        client = Client.find_by(username: params[:username])
        if client&.authenticate(params[:password])
            session[:client_id] ||= client.id
            render json: client, status: :created
        else 
            render json: {error: "User does not exist"}, status: :unauthorized
        end
    end

    def auto_login
        client = Client.find_by(id:session[:client_id])
        render json: client, status: :ok 
    end

    def destroy 
        session.delete(:client_id)
        render json: {message: "Logged out successfully"}, status: :ok
    end

    def show 
        client = Client.find_by(id: params[:id])
        return render json: {error: "User not found"} unless session.include? :client_id
            render json: client, status: :ok      
    end

    def update 
        client = Client.find(session[:client_id])
        client.update!(client_params)
        render json: client, status: :created
    end

    private 

    def client_params 
        params.permit(:username, :email, :phone_number, :password, :password_confirmation, :location)
    end
end
