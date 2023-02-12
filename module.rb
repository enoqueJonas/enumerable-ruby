# Class that holds the module that will be used by enumerable.rb
module MyEnumerable
  def all?
    each { |e| return false unless yield e }
    true
  end

  def any?
    each { |e| return true if yield e }
    false
  end

  def filter
    filtered = []
    each { |e| filtered.push(e) if yield e }
    filtered
  end
end
