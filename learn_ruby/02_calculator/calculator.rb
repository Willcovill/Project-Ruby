#write your code here
def add (x, y)
    return x+y
end
def subtract (x, y)
    return x-y
end

def sum (numbers)
   numbers.inject(0) { |total, number| total+number}
end

def multiply (numbers)
   numbers.inject { |total, number| total*number}
end

def power (x, y)
    @total = x
    @i = 1
   while @i < y do
       @total *= x
       @i +=1
   end
   return @total
end

def factorial(x)
    if x<= 1
        return 1
    end
    if x>1
       return x * factorial(x-1)
    end
end