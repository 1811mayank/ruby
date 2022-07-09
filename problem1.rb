class Grid
    def initialize()
        @num = 10
        @str = "RRRR"
    end
    def getString(num = @num,str = @str)
        i = 0
        j = 0
        face = "N"
        ans  = ""
        str.each_char{
            |index|
            if index == "U"
                i -= 1 if face == "N"
                j += 1 if face == "E"
                i += 1 if face == "S"
                j -= 1 if face == "R"
                ans += face
    
            elsif index == "D"
                if face == "N"
                    i += 1 
                    ans += "S"
                    face = "S"
                
                elsif face == "E"
                    j -= 1
                    ans += "W"
                    face = "W"
                elsif face == "S"
                    i -= 1
                    ans += "N"
                    face = "N"
                else
                    j += 1
                    ans += "E"
                    face = "E"
                end    
            elsif index == "L"
                if face == "N"
                    j -= 1
                    ans += "W"
                    face = "W"
                elsif face == "E"
                    i -= 1
                    ans += "N"
                    face = "N"
                elsif face == "S"
                    j += 1
                    ans += "E"
                    face = "E"
                else
                    i += 1
                    ans += "S"
                    face = "S"
                end
            else
                if face == "N"
                    j += 1
                    ans += "E"
                    face = "E"
                elsif face == "E"
                    i += 1
                    ans += "S"
                    face = "S"
                elsif face == "S"
                    j -= 1
                    ans += "W"
                    face = "W"
                else
                    i -= 1
                    ans += "N"
                    face = "N"
                end
            end
            if  i == -1 || j == -1 || i == num || j == num
                return -1
            end
        }
        return ans
    end
end


p  Grid.new.getString(4,"RRLU")
 
