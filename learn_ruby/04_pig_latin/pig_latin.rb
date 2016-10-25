def translate (words)
    words.split(" ").collect {|x| translateWord(x)}.join(" ")
end

def translateWord(x)
    vowels = ["a", "e", "i", "o", "u"]
    if vowels.include?(x[0])
        return x + "ay"
        
    elsif (!vowels.include?(x[0]) && !vowels.include?(x[1]) && !vowels.include?(x[2])) || (!vowels.include?(x[0]) && (x[1..2]) == "qu")
        return x[3..-1] + x[0..2] + "ay"
        
    elsif !vowels.include?(x[0]) && !vowels.include?(x[1]) || x[0..1] == "qu"
		return x[2..-1] + x[0..1] + "ay"	
       
    else
        return x[1..-1] + x[0] + "ay"
    end
end