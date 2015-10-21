require './lib/node'
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
    current.data = nil 
  end

  def first_node
    @head.next_node.data
  end

  def append(data)
    new_node = Node.new(data)
    find_tail.next_node = new_node
  end

  def prepend(data)
    new_node = Node.new(data)
    @head.next_node = new_node
  end

  def position(data)
  end 

  def pop(number, data)
    skip 
  end 

  def insert(position, data)
    skip 
    new_node = Node.new(position, data)
    current = @head
    until current && (current.counter == (position - 1))
      binding.pry
      current = current.next_node
    end 
    current.next_node = new_node
  end 



end

