class GameInventory
   def display_inventory(inventory)
     puts "Inventory:"
     inventory.each do |key, value|
       puts "#{key} : #{value}"
     end

     total_number_of_items = 0
     inventory.each do |key, value|
      total_number_of_items = total_number_of_items + value
    end
     puts "Inventory: #{total_number_of_items}"
   end
   if __FILE__ == $0
     inv = {'rope': 1, 'torch': 6, 'gold coin': 42, 'dagger': 1, 'arrow': 12}
     game = GameInventory.new
     game.display_inventory(inv)
   end


 end
