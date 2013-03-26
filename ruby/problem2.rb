#!/usr/bin/env ruby

class Fib
    class << self
        include  Enumerable

        def each
            return to_enum unless block_given?
            first, second = 1, 1
            loop do
                yield first
                first, second = second, first + second
            end
        end
    end
end

puts Fib.take_while {|num| num < 4000000}.
         select(&:even?).
         inject(:+)
