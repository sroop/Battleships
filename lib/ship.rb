class Ship

def initialize
  @status = "s"
end

def status
  @status
end

def hit!
  @status = "x"
end

end