# Razvan Rotundu 2024
# Sub strings project
require 'pry-byebug'

def sub_strings(string, word_array)
  out_hash = {}

  word_array.each do |dict_word|
    split_string = string.split(" ")
    split_string.each do |string_word|
      if string_word.include?(dict_word)
        out_hash[dict_word] = out_hash.fetch(dict_word, 0) + 1
      end
    end
  end
  out_hash
end