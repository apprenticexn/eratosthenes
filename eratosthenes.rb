# 4/26 15:30 - 15:58 実装
# 15:58 - 16:07 テスト

require 'pry-byebug'

class Eratosthenes
  def self.sieve(n)
    search_list = (2..n).to_a
    sqrt = Math.sqrt(n)
    prime_numbers = []
    loop do
      break if search_list[0] > sqrt
      move = search_list.shift
      search_list.delete_if { |n| n % move == 0 }
      prime_numbers << move
    end
    prime_numbers += search_list
    prime_numbers.join(', ')
  end
end

# puts Eratosthenes.sieve(ARGV[0].to_i)
