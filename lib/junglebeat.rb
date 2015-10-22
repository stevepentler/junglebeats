require '../lib/node'
require 'pry'

class Junglebeat

  attr_accessor :head, :data

  def initialize(data = nil)
    @head = Node.new(data)
  end

  def data_word_split(data)

  end

  def make_links(data)
    @head.next_node = current
    data.split.each do |word|
      until current.next_node == nil 
        new_node = Node.new
        current = new_node
        current = current.next_node
      end 
    end
  end 

  # def make_links(value)
  #   current = @head
  #   .each do |word|
  #     if current 
  #       new_node = Node.new(word)
  #       current.next_node = new_node
  #     else
  #       current = Node.new(word)
  #       @head = current
  #     end
      
  #   end

  # end 


  # def make_links(value)
  #   current = nil
  #   value.split.each do |word|
  #     if current
  #       new_node = Node.new(word)
  #       current.next_node = new_node
  #       current = new_node
  #     else
  #       current = Node.new(word)
  #       @head = current
  #   end
  # end 




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
    if current.next_node == nil
      all_nodes_data << current.data
    else
      until current.next_node == nil 
        all_nodes_data << current.data
        current = current.next_node 
      end 
      all_nodes_data.join(" ")
    end
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


