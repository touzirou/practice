# 数値 32 とか 4.8 etcetc

num = 4.8

p num.class
p num.methods

# 四則演算
puts num + 5
puts num - 2
puts num * 3
puts num / 4

# 余り、べき乗
puts num % 3
puts num ** 2

# 分数には Rational を使う
puts Rational(2, 5)
puts Rational(1, 6) + Rational(5, 6)

# Float は四捨五入、小数点以下切り捨て/上げ が可能
puts num.round
puts num.floor
puts num.ceil
