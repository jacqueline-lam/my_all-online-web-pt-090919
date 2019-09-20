require 'pry'

def my_all?(collection)
  i = 0 
  block_return_values = []
  
  while i < collection.length
    #send whatever passed in as the argument ot the block
    block_return_values << yield(collection[i]) #yied each ele in collection to the block
    i += 1 
  end
end


my_all?([1,2,3]) {|i| i < 2} 

# As this code executes it will look like this:
# def my_all?([1,2,3])
#   i = 0
#   while i < 3
#     yield(1) #sends 1 to block, evalauates it, and send return value true to `yield`
#     i = 0 + 1
#   end
# end