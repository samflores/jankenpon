# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/jankenpon'

describe Rock do
  subject { Rock.new.versus(opponent) }

  describe 'against rock' do
    let(:opponent) { Rock.new }

    it 'ties' do
      _(subject).must_equal :draw
    end
  end

  describe 'against scissors' do
    let(:opponent) { Scissors.new }

    it 'crushes it' do
      _(subject).must_equal :victory
    end
  end

  describe 'against paper' do
    let(:opponent) { Paper.new }

    it 'gets wrapped' do
      _(subject).must_equal :defeat
    end
  end

  describe 'against lizard' do
    let(:opponent) { Lizard.new }

    it 'crushes it' do
      _(subject).must_equal :victory
    end
  end

  describe 'against spock' do
    let(:opponent) { Spock.new }

    it 'gets vaporized' do
      _(subject).must_equal :defeat
    end
  end
end

describe Paper do
  subject { Paper.new.versus(opponent) }

  describe 'against paper' do
    let(:opponent) { Paper.new }

    it 'ties' do
      _(subject).must_equal :draw
    end
  end

  describe 'against scissors' do
    let(:opponent) { Scissors.new }

    it 'gets cut' do
      _(subject).must_equal :defeat
    end
  end

  describe 'against rock' do
    let(:opponent) { Rock.new }

    it 'wraps it' do
      _(subject).must_equal :victory
    end
  end

  describe 'against lizard' do
    let(:opponent) { Lizard.new }

    it 'gets eaten' do
      _(subject).must_equal :defeat
    end
  end

  describe 'against spock' do
    let(:opponent) { Spock.new }

    it 'refutes it' do
      _(subject).must_equal :victory
    end
  end
end

describe Scissors do
  subject { Scissors.new.versus(opponent) }

  describe 'against scissors' do
    let(:opponent) { Scissors.new }

    it 'ties' do
      _(subject).must_equal :draw
    end
  end

  describe 'against paper' do
    let(:opponent) { Paper.new }

    it 'cuts it' do
      _(subject).must_equal :victory
    end
  end

  describe 'against rock' do
    let(:opponent) { Rock.new }

    it 'gets crushed' do
      _(subject).must_equal :defeat
    end
  end

  describe 'against lizard' do
    let(:opponent) { Lizard.new }

    it 'decaptates it' do
      _(subject).must_equal :victory
    end
  end

  describe 'against spock' do
    let(:opponent) { Spock.new }

    it 'gets smashed' do
      _(subject).must_equal :defeat
    end
  end
end

describe Lizard do
  subject { Lizard.new.versus(opponent) }

  describe 'against lizard' do
    let(:opponent) { Lizard.new }

    it 'ties' do
      _(subject).must_equal :draw
    end
  end

  describe 'against paper' do
    let(:opponent) { Paper.new }

    it 'eats it' do
      _(subject).must_equal :victory
    end
  end

  describe 'against rock' do
    let(:opponent) { Rock.new }

    it 'gets crushed' do
      _(subject).must_equal :defeat
    end
  end

  describe 'against scissors' do
    let(:opponent) { Scissors.new }

    it 'gets decaptated' do
      _(subject).must_equal :defeat
    end
  end

  describe 'against spock' do
    let(:opponent) { Spock.new }

    it 'poisons it' do
      _(subject).must_equal :victory
    end
  end
end

describe Spock do
  subject { Spock.new.versus(opponent) }

  describe 'against spock' do
    let(:opponent) { Spock.new }

    it 'ties' do
      _(subject).must_equal :draw
    end
  end

  describe 'against paper' do
    let(:opponent) { Paper.new }

    it 'gets refuted' do
      _(subject).must_equal :defeat
    end
  end

  describe 'against rock' do
    let(:opponent) { Rock.new }

    it 'vaporizes it' do
      _(subject).must_equal :victory
    end
  end

  describe 'against scissors' do
    let(:opponent) { Scissors.new }

    it 'smashes it' do
      _(subject).must_equal :victory
    end
  end

  describe 'against lizard' do
    let(:opponent) { Lizard.new }

    it 'gets poisoned' do
      _(subject).must_equal :defeat
    end
  end
end
