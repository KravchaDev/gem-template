# coding: utf-8
# frozen_string_literal: true

require 'benchmark/ips'
require_relative '../lib/my_new_library'

Benchmark.ips do |x|
  x.report('MyNewLibrary.something') { MyNewLibrary.something }
  x.report('MyNewLibrary.something') { MyNewLibrary.something }
  x.compare!
end
