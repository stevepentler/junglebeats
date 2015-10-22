require 'minitest'          
require 'minitest/autorun' 
require 'minitest/pride'    
require_relative '../lib/junglebeat'  
require_relative '../lib/node'
require 'pry'

class JunglebeatTest < Minitest::Test

  def test_if_no_node_equals_nil
    list = Junglebeat.new("beep")
    refute nil, list.data
  end

  def test_find_tail_data
    list = Junglebeat.new("beep")
    list.append("bop")
    list.append("BANG-BANG-SKEET-SKEET!")
    list.append("VANILLA FACE!")
    assert_equal "VANILLA FACE!", list.find_tail.data
  end

  def test_tail_next_node_equals_nil
    list = Junglebeat.new("beep")
    list.append("bop")
    assert_equal nil, list.find_tail.next_node
  end

  def test_append_two_nodes_find_new_tail
    list = Junglebeat.new("deep dep dep deep")
    list.append("tee")
    assert_equal "tee", list.find_tail.data
  end

  def test_count_nodes
    list = Junglebeat.new("woogidy")
    list.append("tee")
    list.append("boopity")
    assert_equal 3, list.count
  end 

  def test_find_tail_appending_two_nodes
    list = Junglebeat.new("deep dep dep deep")
    list.append("tee")
    assert_equal 2, list.count
    list.append("boopity")
    assert_equal 3, list.count
  end 

  def test_tail_data
    list = Junglebeat.new("deep dep dep deep")
    list.append("tee")
    assert_equal "tee", list.find_tail.data
  end

  def test_prepended_node_becomes_head
    list = Junglebeat.new("deep dep dep deep")
    list.prepend("woogidy")
    assert_equal "woogidy", list.head.data
  end

  def test_pop_one_off_linked_list
    list = Junglebeat.new("deep dep dep deep")
    list.append("tee")
    list.append("tail_node")
    list.pop
    assert_equal 2, list.count
  end 

  def test_pop_two_node_linked_list
    list = Junglebeat.new("deep dep dep deep")
    list.append("tee")
    list.append("boopity")
    list.pop(2)
    assert_equal 1, list.count
    assert_equal "deep dep dep deep", list.head.data
  end 

  def test_list_includes_data_value
    list = Junglebeat.new("deep dep dep deep")
    list.append("tee")
    list.append("boopity")
    list.append("bangity")
    assert list.include?("bangity")
    assert list.include?("tee")
    refute list.include?("bango")
  end 

  def test_refute_include_data_value
    list = Junglebeat.new("deep dep dep deep")
    list.append("tee")
    list.append("boopity")
    list.append("bangity")
    refute list.include?("Cotton-headed ninee muggins")
  end 

  def test_return_all
    list = Junglebeat.new("deep dep dep deep")
    list.append("tee")
    list.append("boopity")
    assert_equal "deep dep dep deep tee boopity", list.all
  end 

  def test_return_all_with_three_prepended_terms
    list = Junglebeat.new("deep dep dep deep")
    list.prepend("tee")
    list.prepend("boopity")
    assert_equal "boopity tee deep dep dep deep", list.all
  end 

  def test_find_data_in_both_positions_after_second_positions
    list = Junglebeat.new("deep dep dep deep")
    list.append("tee")
    list.append("boopity")
    list.append("bangity")
    list.append("loopity")
    list.append("gong")
    list.append("hobbity")
    assert_equal "boopity bangity", list.find(2, 2)
  end 

  def test_find_data_in_three_positions_after_fourth_position
    list = Junglebeat.new("deep dep dep deep")
    list.append("tee")
    list.append("boopity")
    list.append("bangity")
    list.append("loopity")
    list.append("gong")
    list.append("hobbity")
    assert_equal "bangity loopity gong", list.find(3, 3)
  end 

  def test_insert_one_node_after_first_position
    list = Junglebeat.new("deep dep dep deep")
    list.append("duggidy")
    list.append("wop")
    assert_equal "deep dep dep deep duggidy insert wop", list.insert(1, "insert")
  end 


end
