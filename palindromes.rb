# Problem Statement

# Given a sentence, return true if the sentence is a palindrome.



def palindrome?(sentence)
   new_sentence = sentence.downcase.gsub(/[[:space:]]/, '')          #.gsub(" ", "")
   new_sentence == new_sentence.reverse
end