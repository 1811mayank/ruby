values = [1]
j = 1
i = 1
while j < 26
    i = i*2 + j+1
    values.push(i)
    j += 1
end
def sum(str,values)
    sum = 0
    str.each_char{
        |k|
        p sum += values[k.ord - 97]
    }
    sum
end

def print(n,values)
    ans = ""
    i = 25
    while(n > 0)
        while n-values[i] >= 0
            ans += (97+i).chr
            n -=  values[i]
            
        end
        i -= 1
    end
    ans
end

p "enter a string:"
str = gets.chomp
p "enter a number"
n = gets.chomp
p "value of #{str} is : #{sum(str.downcase,values)}"
p "shortest string of #{n.to_i} is : #{print(n.to_i,values)}"