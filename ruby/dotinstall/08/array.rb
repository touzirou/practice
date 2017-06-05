# 配列 [] でくくって、カンマ区切りで並べていく
puts '> colors = ["blue" , "red", "black", "white"]'
colors = ["blue" , "red", "black", "white"]

# 要素へのアクセスは[1] とか [2] てな感じでアクセスする
puts '> puts colors[1]'
puts colors[1]

# [-1] とかを指定すると末尾からのアクセスになる
puts '> puts colors[-1]'
puts colors[-1]

# 範囲の指定(.. と ... で少し意味が違う)
puts '> puts colors[0..2]'
puts colors[0..2]
puts '> puts colors[0...2]'
puts colors[0...2]

# 範囲外を指定すると nil が表示される
puts '> puts colors[5]'
p colors[5]

# 要素の書き換え
puts '> color[1] = "gray"'
puts '> puts colors[1]'
colors[1] = "gray"
puts colors[1]

# 範囲を指定した書き換えも可能
puts '> colors[2..3] = ["green", "pink"]'
puts '> puts colors[2..3]'
colors[2..3] = ["green", "pink"]
puts colors[2..3]

# 末尾に要素を追加したい場合
puts '> colors.push("yellow")'
puts '> puts colors[-1]'
colors.push("yellow")
puts colors[-1]

# 簡単な書き方
puts '> colors << "gold"'
puts '> puts colors[-1]'
colors << "gold"
puts colors[-1]

# 要素の数、要素の並び替え
puts '> puts colors.size()'
puts '> puts colors.sort()'
puts colors.size()
puts colors.sort()
