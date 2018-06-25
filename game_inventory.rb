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


 end
