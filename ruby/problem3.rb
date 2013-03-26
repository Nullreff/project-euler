#!/usr/bin/env ruby

SEARCH_NUM = 600851475143

class Integer < Numeric
    def factor_of?(num)
        num % self == 0
    end

    def prime_factors
        return [] if self == 1
        factor = (2..self).find {|num| num.factor_of?(self)}
        [factor] + (self / factor).prime_factors
    end
end

puts SEARCH_NUM.prime_factors.max

