class ApplicationController < ActionController::API
    include ActionController::Cookies
    
    def authorize 
         render json: {error: "Not authorized"}, status: :unauthorized unless session.include? :client_id
    end

    def authorize_staff 
        render json: {error: "Not authorized"}, status: :unauthorized unless session.include? :staff_id
    end


end












# private
# def app_login (email: nil)
#     if email == /\@storagecenter\.com/
#         :staff
#     elsif email == /\@gmail\.com/ || email == /\@yahoo\.com/
#         :client
#     end

