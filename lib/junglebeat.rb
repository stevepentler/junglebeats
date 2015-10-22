require '../lib/node'
require 'pry'

class Junglebeat

  attr_accessor :head, :data

  def initialize(data = nil)
    @head = Node.new(data)
  end

  def linked_list(data)
    if data
      data = data.split
      split_node = Node.new(data[0])
    if @head == nil 
      @head = node
      data.shift
      split_node = @head
    else 
      @list = split_node
      data.shift
      split_node = @list 
    end 
    data.each do |word|
      split_node.next_node = Node.new(word)
      split_node = split_node.next_node
      end 
    end 
  end 

  def counter
    count = 0
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

  def prepend(data = nil)
    if data 
      temp_holder = nil
      current = @head 
      count = 1 
      data.split.each do |word|
        if temp_holder
          node = Node.new(word)
          current.next_node = node 
          current = node 
          count += 1 
        else 
          temp_holder = Node.new(word)
          current = temp_holder 
        end 
        current.next_node = @head 
      end 
      @head = temp_holder 
      count 
    end 
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

  def include?(data)
    current = @head
    until current.next_node == nil
      current = current.next_node
      if current.data == data
        return true
      end 
    end
    false
  end 

 def all
    current = @head
    all_nodes_data = []
    while current != nil 
      all_nodes_data << current.data
      current = current.next_node
      end
    all_nodes_data.join(" ").strip
  end 

  def find(position, number_of_elements = 1) #one arg
    current = @head
    position_data = []
    number_of_elements.times do 
    position.times do 
      current = current.next_node
      end 
    position_data << current.next_node.data
    position += 1
    current = @head
    end
    position_data.join(" ")
  end 

  def insert(position, data)
    current = @head
    position.times do 
      current = current.next_node
      end
    temp_holder = current.next_node
    current.next_node = Node.new(data)
    position += 1
    current.next_node.next_node = temp_holder
    return all 
  end 

  def play
    `say -r 500 -v Boing "#{all}"`
  end 

end


