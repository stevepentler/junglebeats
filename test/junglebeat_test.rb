require 'minitest'          # => true
require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true
require './lib/junglebeat'  # ~> LoadError: cannot load such file -- ./lib/junglebeat
require './lib/node'

class JunglebeatTest < Minitest::Test

  def test_can_find_tail
    list = Junglebeat.new
    refute list.tail.data
  end

  # def test_prepend_new_head
  #   node1 = Node.new("beep")
  #   assert_equal "data", node1.prepend("beep")
  # end
  #
  # def test_prepend_first_node_equals_tail
  #   node1 = Node.new("beep")
  #   assert_equal nil, node1
  # end


end

# >> Run options: --seed 44630
# >>
# >> # Running:
# >>
# >>
# >>
# >> Finished in 0.000633s, 0.0000 runs/s, 0.0000 assertions/s.
# >>
# >> 0 runs, 0 assertions, 0 failures, 0 errors, 0 skips

# ~> LoadError
# ~> cannot load such file -- ./lib/junglebeat
# ~>
# ~> /Users/StevePentler/.rvm/rubies/ruby-2.2.1/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/StevePentler/.rvm/rubies/ruby-2.2.1/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/StevePentler/project/2project/test/junglebeat_test.rb:4:in `<main>'
