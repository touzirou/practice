# 文字列を表す "" は %Q() または %() で表すこともできる
puts '> p "hello"'
puts '> p %Q(hello)'
puts '> p %(hello)'
p "hello"
p %Q(hello)
p %(hello)

# ちなみに '' は %q() で表せる
puts '> p "morning"'
puts '> p %q(morning)'
p "morning"
p %q(morning)

# 使い分けは文字で ' " を使う際、エスケープしなくても良いのが %Q や %q
puts '> p "\\\'evening\\\'"'
puts '> p %(\'evening\')'
p "\'evening\'"
p %('evening')

# 配列生成時も % を使うと楽になる
puts '> p ["blue", "red"]'
puts '> p %W(blue red)'
p ["blue", "red"]
p %W(blue red)
