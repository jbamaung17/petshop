def pet_shop_name(pet_shop)
  return (pet_shop)[:name]
end

def total_cash(pet_shop)
  return(pet_shop)[:admin][:total_cash]
end

def add_or_remove_cash(hash, amount)
  return hash[:admin][:total_cash] += amount
end

def pets_sold(hash)
  return hash[:admin][:pets_sold]
end

def increase_pets_sold(hash, increase_amount)
  return hash[:admin][:pets_sold] += increase_amount
end

def stock_count(hash)
  return hash[:pets].length
end

def pets_by_breed(hash, breed_to_find)
breed_found = []
  for animal in hash[:pets]
    if animal[:breed] == breed_to_find
      breed_found << animal
    end
  end
return breed_found
end

def find_pet_by_name(hash, pet_name)
  for pet in hash[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(hash, pet_name)
  for pet in hash[:pets]
    if pet[:name] == pet_name
      hash[:pets].delete pet
    end
  end
end

def add_pet_to_stock(hash, new_pet)
  hash[:pets] << new_pet
  hash.length
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, pet)
  customer[:pets] << pet
  return customer[:pets]
end

def customer_can_afford_pet(customer, pet)
  if customer[:cash] < pet[:price]
    return false
  elsif
    customer[:cash] >= pet[:price]
    return true
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet == nil
  elsif customer_can_afford_pet(customer, pet)
    add_pet_to_customer(customer, pet)
    add_or_remove_cash(pet_shop, pet[:price])
    increase_pets_sold(pet_shop, 1)
  else
  end

end
