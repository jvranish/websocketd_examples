#!/usr/bin/env ruby
require_relative 'vec'

def closest(x, y, radius = nil, &block)
  pos = vec(x,y)
  dist = 1
  dir = vec(0, 1)


  loop do
    dist.times do
      matched = block.call(pos)
      return matched if matched
      pos = pos + dir
    end
    dir = dir.rotate()
    if dir.x == 0
      dist += 1
    end
    break if radius && (dist/2) >= radius && dir.x == 1
  end
  
  return nil
end

closest(0, 0, 5) do |pos|
  sleep 0.1
  puts "#{pos.x}, #{pos.y}"
  STDOUT.flush()
  nil
end
