class RestaurantPizzasController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_method
    private 
    def unprocessable_entity_method(exception)
        render json: (errors: exception.record.errors) ,status: :unprocessable_entity
    end

end
