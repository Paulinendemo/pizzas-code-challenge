class RestaurantPizza < ApplicationRecord
    belongs_to :restaurant
    belongs_to :pizza

    validates :price, presence: true
    validates :price

    def price
        if price < 30 || price < 0
            errors.add(:"must be between 0 and 30")
        end    
    end    
    


end
