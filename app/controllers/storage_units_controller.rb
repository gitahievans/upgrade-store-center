class StorageUnitsController < ApplicationController
    before_action :authorize_staff, only: [:create, :show, :update, :destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    wrap_parameters format: []
   
    def index
        storage_units = StorageUnit.all 
        render json: storage_units, status: 200
    end
    
    def show
        storage_unit = find_unit
        render json: storage_unit, status: :ok
    end

    def create
        staff = Staff.find(session[:staff_id])
        storage_unit = staff.storage_units.create!(storage_params)
        render json: storage_unit, status: :created
    end

    def update
        storage_unit = find_unit
        storage_unit.update!(storage_params)
        show
    end

    def destroy
        storage_unit = find_unit
        storage_unit.destroy
        head :no_content
    end


    private
    
    def storage_params
        params.permit(:name, :size, :price, :image_url, :staff_id, :status)
    end

    def render_not_found_response
        render json: {"Error": "Slot not found"}, status: :not_found
    end

    def render_unprocessable_entity_response(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end

    def find_unit
        StorageUnit.find(params[:id])
    end
end	
