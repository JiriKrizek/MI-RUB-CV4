module Summable
  def sum
    str = ""
    @str.each_char do |s|
      str << s if is_vowel(s)
    end
    str
  end

  private

  def is_vowel(s)
    s =~ /[aeiou]/ 
  end

end

class VowelFinder
  include Summable

  attr_reader :str

  def initialize(str)
    @str = str
  end
end


vf = VowelFinder.new("the quick brown fox jumped")
puts vf.sum


