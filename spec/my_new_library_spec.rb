# coding: utf-8
# frozen_string_literal: true

RSpec.describe MyNewLibrary do
  describe MyNewLibrary::VERSION do
    it do
      expect(MyNewLibrary::VERSION.frozen?).to eq(true)
      expect(Gem::Version.correct?(MyNewLibrary::VERSION)).to eq(true)
    end
  end
end
