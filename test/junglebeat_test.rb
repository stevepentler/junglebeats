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

  def test_prepend_two_nodes_verify_head_points_to_third_added_node
    list = Junglebeat.new
    list.prepend("first_prepended_node")
    list.prepend("second_prepended_node")
    list.prepend("third_prepended_node")
    assert_equal "third_prepended_node", list.first_node
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
    assert_equal "second_node", list.pop
  end 

  def test_pop_count_remaining_nodes
    list = Junglebeat.new
    list.append("first_node")
    list.append("second_node")
    list.pop
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

  def test_assert_include_data_value
    list = Junglebeat.new
    list.append("first_node")
    list.append("second_node")
    list.append("third_node")
    list.append("fourth_node")
    assert list.include?("second_node")
  end 

  def test_refute_include_data_value
    list = Junglebeat.new
    list.append("first_node")
    list.append("second_node")
    list.append("third_node")
    list.append("fourth_node")
    refute list.include?("Cotton-headed ninee muggins")
  end 

  def test_all_with_three_appended_terms
    list = Junglebeat.new
    list.append("first_node")
    list.append("second_node")
    list.append("third_node")
    assert_equal "first_node second_node third_node", list.all
  end 

  def test_all_with_three_prepended_terms
    list = Junglebeat.new
    list.prepend("first_node")
    list.prepend("second_node")
    list.prepend("third_node")
    assert_equal "third_node second_node first_node", list.all
  end 

  def test_find_data_after_second_position
    list = Junglebeat.new
    list.prepend("first_node")
    list.prepend("second_node")
    list.prepend("third_node")
    list.prepend("fourth_node")
    assert_equal "fourth_node", list.find(3)
  end 

  def test_find_data_after_second_position
    list = Junglebeat.new
    list.append("first_node")
    list.append("second_node")
    list.append("third_node")
    assert_equal "third_node", list.find(2)
  end

   def test_find_data_after_third_positions
    list = Junglebeat.new
    list.append("first_node")
    list.append("second_node")
    list.append("third_node")
    list.append("fourth_node")
    assert_equal "fourth_node", list.find(3)
  end 

  def test_find_data_in_both_positions_after_second_positions
    list = Junglebeat.new
    list.append("first_node")
    list.append("second_node")
    list.append("third_node")
    list.append("fourth_node")
    list.append("fifth_node")
    list.append("sixth_node")
    list.append("seventh_node")
    assert_equal "third_node fourth_node", list.find(2, 2)
  end 

  def test_find_data_in_three_positions_after_fourth_position
    list = Junglebeat.new
    list.append("first_node")
    list.append("second_node")
    list.append("third_node")
    list.append("fourth_node")
    list.append("fifth_node")
    list.append("sixth_node")
    list.append("seventh_node")
    assert_equal "fourth_node fifth_node sixth_node", list.find(3, 3)
  end 


def test_insert_one_node_after_first_position
    list = Junglebeat.new
    list.append("first_node")
    list.append("third_node")
    list.append("fourth_node")
    assert_equal "first_node inserted_node third_node fourth_node", list.insert(1, "inserted_node")
end 


end
