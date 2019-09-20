require 'pry'

def my_all?(collection)
  i = 0 
  while i < collection.length
    #send whatever passed in as the argument ot the block
    yield(collection[i]) #yied each ele in collection to the block
    i += 1 
  # binding.pry
  end
end


my_all?([1,2,3]) {|i| i < 2}