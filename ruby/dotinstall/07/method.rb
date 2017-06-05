# ! はメソッドに付加するもので
# 大元のオブジェクトを書き換える
# 所謂、「破壊的なメソッド」と呼ばれる
name = "mado"
puts name.upcase
puts name
puts name.upcase!
puts name

# ? は真偽値を返すメソッド

puts name.empty?
puts name.include?("d")
