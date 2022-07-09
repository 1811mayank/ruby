class Temp
    def initialize()
        @str = "hello"
        @num = 1234
    end
    def getValue(str = @str)
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

    def getShortestString(num = @num)
        ans = ""
        i = 25
        while(num > 0)
            while num-getValue((97+i).chr) >= 0
                ans += (97+i).chr
                num -=  getValue((97+i).chr)
                
            end
            i -= 1
        end
        ans
    end
end


p Temp.new.getValue("ajhfhf")
p Temp.new.getShortestString(123445)


