require('rspec')
require('anagram_antigram')

describe('String#anagram_antigram') do
  it('return false if inputted string is not a word') do
    expect('ruby'.is_word?('thrs')).to(eq(false))
  end
  it('return true if inputted string is word') do
    expect('ruby'.is_word?('bury')).to(eq(true))
  end
  it('return common letter count') do
    expect('ruby'.letter_match_count('bury')).to(eq(4))
  end
  it('Check if the inputs are actual words') do
    expect('ruby'.anagram_antigram('thrs')).to(eq("You need to input actual words!"))
  end
  it('Check if two words are anagrams') do
    expect('ruby'.anagram_antigram('bury')).to(eq("These words are anagrams."))
  end

end
