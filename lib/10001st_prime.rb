# Implement your procedural solution here!
def prime_number_for(nth)
    prime_count = 0
    number = 0

    while prime_count < nth
        number += 1
        prime_count += 1 if prime?(number)
    end

    number
end

def prime?(num)
    if num < 2
        return false
    end

    (2..Math.sqrt(num).to_i).each do |n|
        if num % n == 0
            return false
        end
    end
    true
end