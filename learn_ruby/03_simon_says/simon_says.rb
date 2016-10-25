def echo (words)
    return words.to_s
end

def shout (words)
    return words.to_s.upcase
end

def repeat (words, times = 2)
    return ([words] * times).join(" ")
end

def start_of_word (word, numLetters)
    letters = word.split("")
    @i=1
    x=""
    while @i <= numLetters
    x += letters[@i-1].to_s
    @i += 1
    end
    return x
end

def first_word (words)
    words_array = words.split(" ")
    return words_array[0].to_s
end

def titleize (title)
    title_array = title.split(" ")
    i=1
    title_caps = ""
    while i <= title_array.length
        if i == 1
            title_caps += title_array[i-1].to_s.capitalize
        elsif i < title_array.length
            if title_array[i-1].to_s == "and" || title_array[i-1].to_s == "the" || title_array[i-1].to_s == "over"
                title_caps += " "
                title_caps += title_array[i-1].to_s
            else 
                title_caps += " "
                title_caps += title_array[i-1].to_s.capitalize
            end
        else 
            title_caps += " "
            title_caps += title_array[i-1].to_s.capitalize
        end
    i += 1
    end
    return title_caps
end