# _Anagrams and Antigrams_

#### _Ruby,Independent project 1, 04/21/2017_

#### By _**Chitroopa Manikkavasagam**_

## Description

_This application takes two string as input and checks if its is Anagram, Antigram or palindrome._
_Two words are anagrams if they contain the exact same letters in a different order. For example, "ruby" and "bury" are anagrams because they contain the same letters._

1. _Check if two words are anagrams. If they are, your method should return something like this: "These words are anagrams."_

2. _Account for the possibility that words might have different cases but should still be anagrams. For instance, "Tea" is still an anagram of "Eat"._

3. _If a word or phrase is an anagram, check if it's also a palindrome. The method should return something like: "These words are palindromes."_

4. _Add a rule to check if the inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words. (For instance, "yurb" isn't an anagram of "ruby"    because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!"_

5. _If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."_

6. _Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters._

## Specifications
| Description | Input | Output |
|-------------|-------|--------|
| Check if the inputs are actual words| ruby, thrs | You need to input actual words! |
| Check if two words are anagrams | ruby, bury | These words are anagrams. |
| Check if two words are anagrams irrespective of different case| Tea, Eat | These words are anagrams. |
| If the inputted words are anagrams, check for palindrome | madam, madam | These words are palindromes.|
| If the inputted words aren't anagrams, check for antigrams | hi, bye | These words have no letter matches and are antigrams.|
| Check multiple words being anagrams or antigrams | A telephone girl, Repeating "Hello" | These words are anagrams.|
| Check if inputted string has actual words | ruby has lot of gmrs, gems has lot of ruby| You need to input actual words!|
| If two phrases aren't anagrams, return how many letters from the argument are actual matches with the receiver  | bun, gun| These words aren't anagrams but 2 letters match: u,n|

## Setup/Installation Requirements

* _This project is deployed in Heroku https://anagrams-antigrams.herokuapp.com/ or follow the below steps_
* _Clone this repository_
* _Give $ bundle command to install all required gems_
* _This application uses Sinatra server, give $ ruby app.rb to start the server_
* _Open your browser, type http://localhost:4567 and hit enter_

## Known Bugs

_NA_


## Technologies Used

_Ruby,HTML,CSS_

_Ruby gems : Sinatra,pry,capybara_

### License

*MIT*

Copyright (c) 2017 **_Chitroopa Manikkavasagam_**
