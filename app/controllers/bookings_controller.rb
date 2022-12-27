class BookingsController < ApplicationController
wrap_parameters format: []
    # before_action :authorize
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    
    def index 
        bookings = Booking.all
        render json: bookings, status: :ok
    end

    def show
        booking = Booking.find_by(id:params[:id])
        if booking
            render json:booking
        else
            render json:{error:"Booking not found"}, status: :not_found
        end
    end

    def update
        booking = Booking.find_by(id:params[:id])
        if booking
            booking.update(booking_params)
            render json:booking, status: :ok
        else
            render json: {error:"Booking not found"}, status:not_found
        end
    end

    def create
        client = Client.find(session[:client_id])
            booking = client.bookings.create!(booking_params)
            render json:booking, status: :created
    end

    def destroy 
        booking = find_unit
        booking.destroy
        head :no_content
    end
   
    
    private

    def booking_params
        params.permit(:starting, :ending, :client_id, :storage_unit_id, :goods, :pickup_status, :delivery_status)
    end

    def render_not_found_response 
        render json: {error:"Not found"}, status: :not_found
    end

    def find_unit
        Booking.find_by(params[:booking_id])
    end

end
