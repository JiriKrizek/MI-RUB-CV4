class VowelFinder
  include Enumerable

  attr_reader :str

  def initialize(str)
    @str = str
  end

  def each(&block)
    @str.each_char do |s|
      yield s if is_vowel(s)
    end
  end

  private

  def is_vowel(s)
    return s =~ /[aeiou]/ 
  end

end

vf = VowelFinder.new("the quick brown fox jumped")
puts vf.inject(:+)
