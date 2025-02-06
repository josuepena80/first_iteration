require "minitest/autorun"

require_relative "record_class"

require "date"

require_relative "symptom"

def test_end_tracker # should tell whether the puts statement is correct
  output = capture_io { @record.send(:end_tracker) }.first
  assert_equal "You have closed the Symptom Tracker successfully\n", output
end
