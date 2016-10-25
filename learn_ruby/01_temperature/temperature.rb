#write your code here
def ftoc (deg_fahrenheit)
    return ((deg_fahrenheit - 32) * 0.5556).to_i
end

def ctof (deg_celsius)
    return ((deg_celsius * 1.8)+ 32).to_f
end