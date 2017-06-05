# if 文(then は無くても良い)
score = 60

if (score > 80)
then
    puts "great"
else
    puts "soso"
end

# elsif で条件を増やすことも可能

if (score > 80)
then
    puts "great"
elsif (score > 50)
then
    puts "OK"
else
    puts "soso"
end

# ユーザから入力を受け付けるのは gets
score = gets.to_i
if (score > 80)
    puts "great"
elsif (score > 50)
    puts "OK"
else
    puts "soso"
end

# 省略形
puts "great" if score > 80
