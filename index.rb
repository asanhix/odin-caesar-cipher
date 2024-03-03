
def is_capital(l)
    l.upcase == l
end

def is_letter(l)
    ('a'..'z').to_a.include?(l)
end

def shift(l, num)
    if is_letter(l.downcase)
        abc = ('a'..'z').to_a
        i = abc.index(l.downcase)
        shifted = abc[(i + num) % abc.size] 
        if is_capital(l)
            return shifted.upcase
        else
            shifted
        end
    else
        return l
    end
end


def caeser_cipher(msg, num)
    new_msg = ""
    msg.chars.each do |l|
        new_msg << shift(l, num)
    end
    new_msg
end


p caeser_cipher("What a string!", 5)
