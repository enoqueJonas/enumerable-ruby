# frozen_string_literal: true

require_relative './enumerable'

# class that will create new list
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end
