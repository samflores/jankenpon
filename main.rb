require_relative 'lib/jankenpon'

SHAPES = [
  Rock.new,
  Paper.new,
  Scissors.new,
  Lizard.new,
  Spock.new
].freeze

# 10 random sample rounds
10.times do
  player1 = SHAPES.sample
  player2 = SHAPES.sample

  message = case player1.versus(player2)
  when :victory then "#{player1} wins against #{player2}"
  when :defeat then "#{player1} loses against #{player2}"
  when :draw then "#{player1} ties with #{player2}"
  end

  puts message
end
