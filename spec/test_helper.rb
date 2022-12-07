# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
