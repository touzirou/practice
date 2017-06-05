# 例外
class MyError < StandardError; end
begin
    x = gets.chomp.to_i
    if (x == 3)
        raise MyError
    end
    p 100 / x
rescue => ex
    p ex.message
    p ex.class
    puts "stop"
rescue MyError
    puts "not 3!"
ensure
    puts "---END---"
end
