module MyEnumerable 
    def all?
        each {|n| return false unless yield n}
        true
    end

    def any?
        each {|n| return true if yield n}
        false
    end

    def filter 
        filtered = []
        each {|n| filtered.push(e) if yield e}
        filtered
    end
end