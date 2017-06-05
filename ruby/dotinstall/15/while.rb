# while
idx = 0

while (idx < 10) do
    idx = idx + 1
    puts "#{idx} : hello"
end

# ループ回数が決まっている場合は times メソッドがおすすめ
5.times do |i|
    puts "#{i} : evening"
end

# do end は {} で代用可能
3.times { |x| puts x }
