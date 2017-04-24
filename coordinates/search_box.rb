#!/usr/bin/env ruby
def closest(x,y,max_r=5,&block)
  r = 0

  match = block.call(x,y)
  return x,y if match

  while r < max_r && !match
    r += 1
    rr = 2 * r + 1
    [0,rr-1].each do |i|
      rr.times do |j|
        xx = x + i - r
        yy = y + j - r
        match = block.call(xx,yy)
        return xx, yy if match
      end
    end

    (rr-2).times do |i|
      [0,rr-1].each do |j|
        xx = x + i + 1 - r
        yy = y + j - r
        match = block.call(xx,yy)
        return xx, yy if match
      end
    end
  end

  nil
end

closest(0, 0, 5) do |x, y|
  sleep 0.1
  puts "#{x}, #{y}"
  STDOUT.flush()
  nil
end


