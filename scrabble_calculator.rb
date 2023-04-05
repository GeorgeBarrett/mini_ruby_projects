# Write a program that calculates the score for a word in Scrabble.
# It should:
# * Ask the user for a word e.g. `apple`.
# * `puts` the score for the word in Scrabble by totalling the points
#   for each letter in the word.
#   * Points for each letter:
#     * 0 points: blank tile
#     * 1 point: E, A, I, O, N, R, T, L, S, U
#     * 2 points: D, G
#     * 3 points: B, C, M, P
#     * 4 points: F, H, V, W, Y
#     * 5 points: K
#     * 8 points: J, X
#     * 10 points: Q, Z

# * Note: You can assume that the user will enter a word that only
#   contains letters and blanks.  You can assume the word will be in
#   uppercase.

# scrabble = {
#     "A" => 1, 
#     "E" => 1, 
#     "I" => 1, 
#     "O" => 1,
#     "N" => 1, 
#     "R" => 1, 
#     "T" => 1, 
#     "L" => 1, 
#     "S" => 1, 
#     "U" => 1,
#     "D" => 2, 
#     "G" => 2,
#     "B" => 3, 
#     "C" => 3, 
#     "M" => 3, 
#     "P" => 3,
#     "F" => 4, 
#     "H" => 4, 
#     "V" => 4, 
#     "W" => 4, 
#     "Y" => 4,  
#     "K" => 5,
#     "J" => 8, 
#     "X" => 8,
#     "Q" => 10, 
#     "Z" => 10   
# }

scrabble = {
    1 => ["A", "E", "I", "O", "N", "R", "T", "L", "S", "U"],
    2 => ["D", "G"],
    3 => ["B", "C", "M", "P"],    
    4 => ["F", "H", "V", "W", "Y"],
    5 => ["K"],
    8 => ["J", "X"],
    10 => ["Q", "Z"]
} 

puts "Enter a word."
word = gets.chomp

if word == ""
  puts 0
end

total = 0

word.each_char do |x|

  scrabble.each do |key, value|
        
    if value.include?(x) 
      total += key   
    end
  end
end

puts total


