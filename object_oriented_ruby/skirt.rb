

module StoreFront
  class Skirt
    attr_reader :pattern, :size
    attr_writer :price
    include SaleItem

    def initialize(input_options)
      @pattern = input_options[:pattern]
      @size = input_options[:size]
      @price = input_options[:price]
    end

    def print_info
      p "The skirt is #{@pattern}, size #{size}, and costs $#{@price}."
    end

  end
end