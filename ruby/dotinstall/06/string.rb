# 文字列 "" or '' で囲む
# "" は式展開する、'' はしない
puts "hello \n\tworld"
puts 'hello \n\tworld'

puts "price #{1000 * 5}"
puts 'price #{1000 * 5}'

# 変数も同様
name = "mado"
puts "name is #{name}"
puts 'name is #{name}'

# + で連結
# * で繰り返し
puts name + "guchi"
puts name * 5
