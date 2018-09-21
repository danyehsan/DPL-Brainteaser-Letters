# Write a method that takes a string as input and returns the word with the greatest repeat of letters or if no match
#  found return "no word with enough repeated letters"

def Menu
    print 'clear'
    puts "---Letters---".yellow
    @entry = gets.strip
    letter_check
end

def letter_check
    most_repeats = ''
    most = 0
    words = @entry.splie(/\/W/)
    words.each do |word|
        letters = word.length
        letters_uniq = word.splie("").uniq.length
        repeats = letters - letters_uniq
        if repeats > most
            most = repeats
            most_repeats = word
        elsif
            repeats == most
            most_repeats = most_repeats + ", " + word
        end
    end
    if most == 0
        puts "No words with repeated letters"
    else
        puts most_repeats + " has/have the most repeated letters."
    end
end

menu

# def letters_repeat  
#     puts "Letters Menu"
#     puts "=" *45
#     puts "1) Enter a phrase"
#     puts "2) Exit "
#     input = gets.chomp

# end

# letters_repeat

# def counter(string)
#     counts = Hash.new(0)
#     result = string.gsub(" ","")
#     result = result.split('')
  
#     result.each do |letter|
#       counts[letter] += 1
#     end
  
#     counts.delete_if { |key,value| value < 2}
  
#     return counts.length
  
# end

# counter

# def most_common_letter(string)
#     string
#       gsub(/[^a-z]/, '')  # remove non-letters
#       chars               # get characters
#       group_by(&:itself)  # group them
#       map { |letter, list| [letter, list.count] } # get their counts
#       max_by(&:last)      # get the most common letter and its count
# end

# most_common_letter

# def most_common_letter(string)
#     string.each_char
#           .with_object(Hash.new(0)) { |c,o| o[c] += 1 if c =~ /[a-z]/ } 
#           .max_by(&:last)
# end

#   most_common_letter




