@abecedary = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

def caesarCipher ()
    secret = ""
    print ("Message: ")
    msg = gets.chomp

    #each_char will break when there is a space character, so I took advantage and manage this issue with an exception.
    msg.each_char do |i|
        begin
            if (@abecedary.map(&:upcase).include?(i) == false)
                k = (@abecedary.index (i)) - 3
                if (k < 0)
                    k = @abecedary.length + k
                end
                secret << @abecedary[k]
            else
                k = (@abecedary.index (i.downcase)) - 3
                if (k < 0)
                    k = @abecedary.length + k
                end
                secret << @abecedary[k].upcase
            end
        rescue
            secret << " "
        end
    end
    puts (secret)
end

caesarCipher()