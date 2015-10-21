require 'minitest'          
require 'minitest/autorun' 
require 'minitest/pride'    
require_relative '../lib/junglebeat'  
require_relative '../lib/node'
require 'pry'

class JunglebeatTest < Minitest::Test

  def test_if_no_node_equals_nil
    list = Junglebeat.new
    assert_equal nil, list.data
  end

  def test_head_data_equals_nil
    list = Junglebeat.new
    assert_equal nil, list.find_head
  end


  def test_find_tail_data
    list = Junglebeat.new
    list.append("beep")
    list.append("bop")
    list.append("BANG-BANG-SKEET-SKEET!")
    list.append("VANILLA FACE!")
    assert_equal "VANILLA FACE!", list.find_tail.data
  end

  def test_find_tail_next_node_equals_nil
    list = Junglebeat.new
    list.append("VANILLA FACE!")
    assert_equal nil, list.find_tail.next_node
  end

  def test_append_two_nodes_find_new_tail
    list = Junglebeat.new
    list.append("first_node")
    assert_equal "first_node", list.find_tail.data
  end

  def test_count_one_node
    list = Junglebeat.new
    list.append("first_node")
    assert_equal 1, list.counter
  end 

  def test_first_node
    list = Junglebeat.new
    list.append("first_node")
    assert_equal ("first_node"), list.first_node
  end

  def test_count_list_of_two_appended_nodes
    list = Junglebeat.new
    list.append("beep")
    list.append("bop")
    assert_equal 2, list.counter
  end

  def test_count_after_appending_two_nodes
    list = Junglebeat.new
    list.append("first_node")
    list.append("second_node")
    assert_equal "second_node", list.find_tail.data
  end 

  def test_append_two_nodes
    list = Junglebeat.new
    list.append("first_node")
    list.append("second_node")
    assert_equal "second_node", list.find_tail.data
  end

  def test_count_list_of_two_appended_nodes
    list = Junglebeat.new
    list.append("beep")
    list.append("bop")
    assert_equal 2, list.counter
  end

  def test_prepend_one_node_and_count
    list = Junglebeat.new
    list.prepend("first_node")
    assert_equal 1, list.counter
  end

  def test_prepend_two_nodes_verify_head_points_to_second_added_node
    list = Junglebeat.new
    list.prepend("first_prepended_node")
    list.prepend("second_prepended_node")
    assert_equal "second_prepended_node", list.first_node
  end 

  def test_pop_one_off_linked_list
    list = Junglebeat.new
    list.append("first_node")
    list.append("second_node")
    list.append("tail_node")
    list.pop
    assert_equal 2, list.counter
  end 

  def test_pop_two_node_linked_list
    list = Junglebeat.new
    list.append("first_node")
    list.append("second_node")
    list.pop(1)
    assert_equal 1, list.counter
  end 

  def test_pop_two_off_linked_list
    list = Junglebeat.new
    list.append("first_node")
    list.append("second_node")
    list.append("third_node")
    list.append("fourth_node")
    list.pop(2)
    assert_equal 2, list.counter
  end 

  # def test_include?
  #   skip
  #   list = Junglebeat.new
  #   list.append("first_node")
  #   list.append("second_node")
  #   list.append("third_node")
  #   list.append("fourth_node")
  #   assert list.include? "second_node"
  # end 


  # def test_insert_new_node_between_first_and_second_existing_nodes
  #   skip 
  #   list = Junglebeat.new
  #   list.prepend("first_node")
  #   list.append("second_node")
  #   list.insert(1, "inserted_node")
  #   assert_equal "inserted_node", @head.next_node.data
  # end 

  # def test_return_position_of_node
  #   skip
  #   list = Junglebeat.new
  #   list.append("first_node")
  #   list.append("second_node")
  #   list.append("third_node")
  #   assert_equal 3, list
  # end 

end
