# オブジェクトの相互変換
puts '> x = 50'
puts '> y = "3"'
x = 50
y = "3"

# 文字列を数値に変換する
puts '> puts x + y.to_i'
puts x + y.to_i

# 数値を文字列に変換する
puts '> puts x.to_s + y'
puts x.to_s + y

# ハッシュと配列の変換
puts '> h = {:pen => 80, :apple => 120}'
h = {:pen => 80, :apple => 120}
puts '> a = h.to_a'
puts '> p a'
a = h.to_a
p a
puts '> p a.to_h'
p a.to_h
