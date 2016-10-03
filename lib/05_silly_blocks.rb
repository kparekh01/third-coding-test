def reverser
  yield.gsub( /\w+/ ){ |words| words.reverse }
end
def adder(block = nil)
  value = yield
  block == nil ? value += 1 : value += 3
end
def repeater(block = nil)
  block != nil ? (block).times{yield} :  yield
end

