def sum(str)
    sum = 0
    i = 0
    j = 0
    while j < 26
        i = i*2 + j+1
        sum += i*(str.count((97+j).chr))
        j += 1
    end
    sum
end

def print(n)
    ans = ""
    i = 25
    while(n > 0)
        while n-sum((97+i).chr) >= 0
            ans += (97+i).chr
            n -=  sum((97+i).chr)
            
        end
        i -= 1
    end
    ans
end
 
p "enter a string:"
str = gets.chomp
p "enter a number"
n = gets.chomp
p "value of #{str} is : #{sum(str.downcase)}"
p "shortest string of #{n.to_i} is : #{print(n.to_i)}"