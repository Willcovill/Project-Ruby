class Book
    attr_reader :title
    def title=(words)
        no_cap = ['a', 'an', 'and', 'of', 'over', 'or', 'the', 'in']
        @title = words.capitalize.split.collect{ |str| no_cap.include?(str) ? str : str.capitalize }.join(" ")
    end
end
#class Book
#	attr_reader :title

#	def title=(val)
#		little_words = ['and', 'the', 'of', 'over', 'in', 'a', 'an']
#		@title = val.capitalize.split.map{ |str| little_words.include?(str) ? str : str.capitalize }.join(' ')
#	end
#end