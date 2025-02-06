require "date"
require "minitest/autorun"
require_relative "/workspaces/first_iteration/record_class.rb"
require_relative "/workspaces/first_iteration/symptom.rb"

class TestRecord < Minitest::Test
  def setup
    @record = Record.new  
  end

  def test_end_tracker # should tell whether the puts statement is correct
  output = capture_io { @record.send(:end_tracker) }.first
  assert_equal "You have closed the Symptom Tracker successfully\n", output
  end

end
