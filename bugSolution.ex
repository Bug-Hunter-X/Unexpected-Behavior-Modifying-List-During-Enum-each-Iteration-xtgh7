```elixir
list = [1, 2, 3, 4, 5]

# Correct Approach using Enum.filter
new_list = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(new_list) # Output: [1, 2, 4, 5]

#Correct approach using list comprehension
new_list2 = for x <- list, x != 3, do: x
IO.inspect(new_list2) # Output: [1, 2, 4, 5]

#Alternative solution:  building a new list
new_list3 = []
Enum.each(list, fn x ->
  if x != 3 do
    new_list3 = [x | new_list3]
  end
end)
new_list3 = Enum.reverse(new_list3)
IO.inspect(new_list3) # Output: [1, 2, 4, 5]
```