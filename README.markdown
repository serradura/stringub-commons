# serradura/stringub-commons

## Links

<a href='https://rubygems.org/gems/stringub-commons'>https://rubygems.org/gems/stringub-commons</a>

<a href="https://github.com/serradura/stringub-commons">https://github.com/serradura/stringub-commons</a>

## Description
This library borned from the early versions of string_utility_belt gem, this gem adds new common purpose methods to String class. E.g: split a string in words, replace a sequence of spaces per a unique space.

## Install

    gem install stringub_commons

## Examples
### Method: words
Split strings into an array of words.

    # Ex:
    "Ruby on Rails".words
    # >> ["Ruby", "on", "Rails"]

    "Serradura's house".words
    # >> ["Serradura's", "house"]

    # If you question yourself:
    # Whats the difference between the standard method String#split and words method?

    "a, b, c, d-e,@ f'g.**".split
    # >> ["a,", "b,", "c,", "d-e,@", "f'g.**"]

    "a, b, c, d-e,@ f'g.**".words
    # >> ["a", "b", "c", "d-e", "f'g"]

    # The answer is:
    # the words method just take words!   

### Method: unique_spaces
Removes a sequence of any kind of space characters per a unique whitespace.
    "       \n    abc   \n\n\r\t def \n\r  ghi \n".unique_spaces
    # >> " abc def ghi "
  
    #Tip:
    #If do you need remove trailing whitespaces. chain the String#strip method:

    "       \n    abc   \n\n\r\t def \n\r  ghi \n".unique_spaces.strip
    # >> "abc def ghi"

More examples can be founds in the tests.

