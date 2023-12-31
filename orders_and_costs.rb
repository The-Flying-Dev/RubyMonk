# Problem Statement

# A restaurant has incoming orders for which you need to compute the costs based on the menu.
# You might get multiple orders at times.

# Examples:
# if the order is {:rice => 1, :noodles => 1}, and the menu is {:rice => 3, :noodles => 2}, then the cost is 5.

# If the orders are {:rice => 1, :noodles => 1} and {:rice => 2, :noodles => 2} and the menu is {:rice => 3, :noodles => 2}, then the cost is 15.




class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    
    rice_val = orders.map { |hash| hash.fetch_values(:rice) }.flatten.inject(0) { |sum, i| sum + i } * @menu[:rice]
    noodles_val = orders.map { |hash| hash.fetch_values(:noodles) }.flatten.inject(0) { |sum, i| sum + i }* @menu[:noodles]
    
    rice_val + noodles_val
  end
end