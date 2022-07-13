# coding: us-ascii
# frozen_string_literal: true
# shareable_constant_value: experimental_everything

# Copyright (C) 2021 Kenichi Kamiya

# require 'securerandom'

# @!attribute [r] milliseconds
#   @return [Integer]
class MyNewLibrary
  class Error < StandardError; end
  class UnexpectedError < Error; end

  FOOBAR = 42

  attr_reader(:milliseconds)

  # @api private
  # @param [Integer] milliseconds
  # @param [Integer] integer
  # @return [void]
  def initialize(milliseconds:, integer:)
    # All arguments check should be done with each constructors, not here
    @integer = integer
    @milliseconds = milliseconds
  end

  # @return [String]
  def inspect
    ':)'
  end
end

require_relative('my_new_library/version')

class MyNewLibrary
  private_constant(:FOOBAR)
end
