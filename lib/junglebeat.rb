require '../lib/node'
require 'pry'

class Junglebeat

  attr_accessor :head, :data

  def initialize(data = nil)
    @head = Node.new(data)
  end

  def counter
    count   = 0
    current = @head
      until current.next_node == nil
        current = current.next_node
        count += 1
      end
    count
  end

  def find_tail
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current
  end

  def find_head
    current = @head
    current.data  
  end

  def first_node
    @head.next_node.data
  end

  def append(data)
    new_node = Node.new(data)
    find_tail.next_node = new_node
  end

  def prepend(data)
    temp_holder = @head.next_node
    @head.next_node = Node.new(data)
    @head.next_node.next_node = temp_holder
  end

  def pop(number = 1)
    current = @head
    removed = []
      number.times do
        until current.next_node.next_node == nil 
        current = current.next_node
        end
        removed << current.next_node.data
        current.next_node = nil
        current = @head
      end
      removed.join(" ")
  end 

  def include?(value)
    current = @head  
    until current.data == value || current.next_node == nil
      current = current.next_node
    end 
    true if current.data == value
  end 

  def all
    current = @head
    all_nodes_data = []
      until current.next_node == nil 
      current = current.next_node 
      all_nodes_data << current.data
      end 
    all_nodes_data.join(" ")
  end 



  # def insert(position, data)
  #   skip 
  #   new_node = Node.new(position, data)
  #   current = @head
  #   until current && (current.counter == (position - 1))
  #     current = current.next_node
  #   end 
  #   current.next_node = new_node
  # end 



end

