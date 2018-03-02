require './module.rb'
require './skirt.rb'
require './food.rb'


skirt1 = StoreFront::Skirt.new({:pattern => "leopard", :size => 3, :price => 12})
skirt2 = StoreFront::Skirt.new({:pattern => "cheetah", :size => 7, :price => 20})
skirt1.print_info

p skirt1.size
skirt2.print_info

p skirt1.print_info

food1 = StoreFront::Food.new
food1.shelf_life
food1.sale
