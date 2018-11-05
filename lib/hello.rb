def hello_t(array)
  if array.kind_of?(Array)
    puts "Hey! No block was given!"
  else
    array.each do | name |
      yield name
    end
  end
end

# call your method here!
hello_t(["Tim", "Tom", "Jim"]) do | name |
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
