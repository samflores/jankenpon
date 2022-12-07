require_relative 'lib/jankenpon'

SHAPES = [
  Rock.new,
  Paper.new,
  Scissors.new,
  Lizard.new,
  Spock.new
].freeze

OUTCOMES = {
  victory: 'wins against',
  defeat: 'loses against',
  draw: 'ties with'
}

# 10 random sample rounds
10.times do
  player1 = SHAPES.sample
  player2 = SHAPES.sample

  outcome = OUTCOMES[player1.versus(player2)]

  puts "#{player1} #{outcome} #{player2}"
end
