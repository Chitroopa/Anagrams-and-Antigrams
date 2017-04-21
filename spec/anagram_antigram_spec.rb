require('rspec')
require('anagram_antigram')

describe('String#anagram_antigram') do

# Test case for sub functions
  it('return true if inputted word is actual word') do
    expect('ruby'.is_word?()).to(eq(true))
  end

  it('return common letter count') do
    expect('ruby'.letter_match_count('bury')).to(eq(4))
  end

  it('return false if inputted string has no actual words') do
    expect('thrs ruby'.has_actual_word?()).to(eq(false))
  end

# Test case for main function

  it('Check if the inputs are actual words') do
    expect('ruby'.anagram_antigram('thrs')).to(eq("You need to input actual words!"))
  end

  it('Check if inputted string has actual word') do
    expect('ruby has lot of gmrs'.anagram_antigram("gems has lot of ruby")).to(eq("You need to input actual words!"))
  end

  it('Check if two words are anagrams') do
    expect('ruby'.anagram_antigram('bury')).to(eq("These words are anagrams."))
  end


  it('Check if two words are anagrams irrespective of difference case') do
    expect('Tea'.anagram_antigram('Eat')).to(eq("These words are anagrams."))
  end

  it('Check for palindrome, if inputted words are anagrams') do
    expect('Madam'.anagram_antigram('madaM')).to(eq("These words are palindromes."))
  end

  it('Check for antigrams') do
    expect('Hi'.anagram_antigram('bye')).to(eq("These words have no letter matches and are antigrams."))
  end

  it('Check if two words are anagrams or antigrams') do
    expect('ruby'.anagram_antigram('brry')).to(eq("These words are not anagrams or antigrams"))
  end

  it('Check for multiple words being anagrams or antigrams') do
    expect('A telephone girl'.anagram_antigram('Repeating "Hello"')).to(eq("These words are anagrams."))
  end

end
