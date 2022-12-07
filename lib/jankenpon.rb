# frozen_string_literal: true

class TradidionalRuleSet
  BEATS = {
    ROCK: [:SCISSORS],
    PAPER: [:ROCK],
    SCISSORS: [:PAPER]
  }.freeze

  def beatten_by(name)
    self.class::BEATS.fetch(name)
  end
end

class FuturisticRuleSet < TradidionalRuleSet
  BEATS = {
    ROCK: %i[SCISSORS LIZARD],
    PAPER: %i[ROCK SPOCK],
    SCISSORS: %i[PAPER LIZARD],
    LIZARD: %i[SPOCK PAPER],
    SPOCK: %i[ROCK SCISSORS]
  }.freeze
end

class Shape
  def versus(other, rule_set = FuturisticRuleSet.new)
    return :draw if name == other.name

    beats(rule_set).include?(other.name) ? :victory : :defeat
  end

  def beats(rule_set)
    rule_set.beatten_by(name)
  end

  def name
    @name ||= self.class.name.upcase.to_sym
  end
end

class Rock < Shape; end
class Paper < Shape; end
class Scissors < Shape; end
class Lizard < Shape; end
class Spock < Shape; end
