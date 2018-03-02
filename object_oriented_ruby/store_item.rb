skirt1 = {
  :pattern => "leopard",
  :size => 3,
  :price => 12
}

skirt2 = {
  :pattern => "cheetah",
  :size => 7,
  :price => 20
}

skirt3 = {
  :pattern => "plaid",
  :size => 1,
  :price => 5
}

p "The pattern is #{skirt1[:pattern]} and the price is $#{skirt1[:price]}."


class Skirt
  attr_reader :pattern, :size
  attr_writer :price

  def initialize(input_options)
    @pattern = input_options[:pattern]
    @size = input_options[:size]
    @price = input_options[:price]
  end

  def print_info
    p "The skirt is #{@pattern}, size #{size}, and costs $#{@price}."
  end

end

skirt1 = Skirt.new({:pattern => "leopard", :size => 3, :price => 12})
skirt2 = Skirt.new({:pattern => "cheetah", :size => 7, :price => 20})
skirt1.print_info

p skirt1.size
skirt2.print_info
skirt1.price = 6
p skirt1.print_info