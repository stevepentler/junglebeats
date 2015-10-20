require './lib/node'

class Junglebeat

attr_reader :head, :data

  def initialize(data = nil)
    @head = nil
  end


  def tail
    pointer = @head
    until pointer.next_node == nil
      pointer = pointer.next_node
    end
    pointer
  end

  # def prepend(entry)
  #   Node.new("data").next_node = @head
  #   @head = Node.new("data")
  # end
  #
  # def append(entry)
  #   current.next_node = Node.new("data")
  # end
end

    # def pop(number_of_nodes_to_pop)
    #   if current.next_node = @tail
    #   end
    # end


#   def head
#     @head.data
#   end
#
#   def tail
#     @head = current
#     current.next_node until current.next_node == nil
#
#     current.next_node
#     current.data
#     end
