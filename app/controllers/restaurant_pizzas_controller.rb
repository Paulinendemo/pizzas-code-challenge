class RestaurantPizzasController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_method
    def create 
       restaurant_pizza = RestaurantPizza(restaurant_pizza_params) 
    end    render json: restaurant_pizza, status: :created

    private 
    def restaurant_pizza_params
        params.permit(:restaurant_id, :pizza_id, :price)
    end  

    def unprocessable_entity_method(exception)
        render json: (errors: exception.record.full_messages), status: :unprocessable_entity
    end

end
