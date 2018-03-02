require './module.rb'

module StoreFront
  class Food
    include SaleItem

    def shelf_life
      puts "This expires in 3 days."
    end

  end
end