# coding: utf-8
# frozen_string_literal: true

require_relative('helper')

class TestMyNewLibrary < Test::Unit::TestCase
  include(MyNewLibraryAssertions)

  def setup
    nil
  end

  def test_constant_version
    assert do
      MyNewLibrary::VERSION.instance_of?(String)
    end

    assert do
      MyNewLibrary::VERSION.frozen?
    end

    assert do
      Gem::Version.correct?(MyNewLibrary::VERSION)
    end
  end

  def teardown
    nil
  end
end
