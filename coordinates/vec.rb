# terrible vector class  =P
def vec(x,y)
  Vec.new(x:x,y:y)
end
class Vec
  attr_accessor :x, :y

  def initialize(x:0,y:0)
    @x = x
    @y = y
  end

  def +(other)
    vec(x+other.x,y+other.y)
  end

  def -(other)
    vec(x-other.x,y-other.y)
  end

  def *(scale)
    vec(x*scale,y*scale)
  end

  def rotate()
    vec(y, -x)
  end

end
