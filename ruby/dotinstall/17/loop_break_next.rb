# loop 永遠に処理を行う

#i = 0
#loop do
#    p i
#    i += 1
#end

# break, next
10.times do |i|
    if (i == 3)
        next
    end
    if (i == 7)
        break
    end
    p i
end
