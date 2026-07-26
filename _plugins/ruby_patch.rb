# Monkey patch for Ruby 3.2+ compatibility
# Ruby 3.2 removed the taint mechanism which causes Liquid 4.0.3 to crash.
class Object
  def tainted?
    false
  end

  def taint
    self
  end

  def untaint
    self
  end
end
