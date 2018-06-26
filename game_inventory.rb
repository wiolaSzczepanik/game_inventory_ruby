class GameInventory
   def display_inventory(inventory)
     puts "Inventory:"
     inventory.each do |key, value|
       puts "#{key} #{value}"
     end

     total_number_of_items = 0
     inventory.each do |key, value|
      total_number_of_items = total_number_of_items + value
    end
     puts "Inventory: #{total_number_of_items}"
   end

   def add_to_inventory(inventory, added_items)
      items_to_add = Hash.new(0).tap { |h| added_items.each { |item| h[item] += 1 } }

     inventory.merge(items_to_add){|k, inv_value, items_value| inv_value.merge  items_value}

     # totals = inventory.reduce({}) do |sums, items|
     #   sums.merge(items) {|_, a, b| a + b}
     # end

   end

   if __FILE__ == $0
     inv = {"rope": 1, "torch": 6, "gold_coin":42, "dagger": 1, "arrow":12}
     game = GameInventory.new
     # game.display_inventory(inv)

     dragon_loot = ["gold_coin", "dagger", "gold_coin", "gold_coin", "ruby"]
     inventory = game.add_to_inventory(inv,dragon_loot)
     game.display_inventory(inventory)

     puts inventory


   end
 end
