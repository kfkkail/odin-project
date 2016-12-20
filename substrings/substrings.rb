def substrings(text, dictionary)
    returnable = Hash.new
    downtext = []
    downtext = text.downcase.split

    downtext.collect { |downtextish|
        dictionary.collect { |word|
            if downtextish.include? word
                if returnable.has_key? word
                    returnable[word] += 1
                else
                    returnable[word] = 1
                end
            end
        }
    }
    return puts returnable.to_s
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts dictionary.to_s
substrings("below", dictionary)

substrings("below low", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)