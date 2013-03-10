class Filter
  def initialize(input)
    @input = input
  end

  def getHashes
    elements = @input.split()
    matches = elements.grep(/^\#(\w+)/) {$1}
  end
end
