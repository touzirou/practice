# 書式は % を使って指定することができる
# 文字列 %s, 整数 %d, 浮動小数点 %f
puts '> puts "name: %s" % "jam"'
name = "jam"
puts "name: %s" % name

# 例えば %10s とすると 10 桁分の幅を確保してこちらを表示する
puts '> puts "name: %10s" % "tanaka"'
puts "name: %10s" % "tanaka"

# 10 桁分確保しつつ、左詰めの場合は - にする
puts '> puts "name: %-10s" % "tanaka"'
puts "name: %-10s" % "tanaka"

# 値が複数の場合は配列で渡す
puts '> puts "int: %d, float: %f" % [10, 2.5]'
puts "int: %d, float: %f" % [10, 2.5]

# 0 埋めしたい時は桁数の前に 0 を付加する
puts '> puts "int: %05d, float: %f" % [20, 8.5]'
puts "int: %05d, float: %f" % [20, 8.5]
