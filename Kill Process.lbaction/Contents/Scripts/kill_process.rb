#!/usr/bin/env ruby

unless ARGV.empty?
  `kill -9 #{ARGV.first}`
end