module FunWithStrings

  def palindrome?
    # your code here
	test = self.downcase.gsub(/[^a-z]*\s*\d*/, "")
	return test == test.reverse
  end

  def count_words # your code here
	wordhash = Hash.new
		
	self.downcase.scan(/\b\w*\b/) do |word|
		if wordhash.has_key?(word) 
			wordhash[word] += 1
		elsif word == ""
		else wordhash[word] = 1
		end
	end
	return wordhash
  end

  def anagram_groups
	g = self.downcase.split.group_by{ |x| x.chars.sort }.values
  end
# make all the above functions available as instance methods on Strings:
end
class String
  include FunWithStrings
end
