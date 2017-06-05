# ハッシュは { } で囲って、キーとバリューを結びつけるは =>
puts '> scores = {"ken" => 90, "tom" => 20}'
puts '> p scores'
scores = {"ken" => 90, "tom" => 20}
p scores

# キーは文字列等より早いシンボルオブジェクトを使う事が多い
puts '> scores = {:ken => 90, :tom => 20}'
puts '> p scores'
scores = {:ken => 90, :tom => 20}
p scores

# 短い記法
puts '> scores = {ken: 90, tom: 20}'
puts '> p scores'
scores = {ken: 90, tom: 20}
p scores

# アクセス方法は配列と同じ
puts '> puts scores[:ken]'
puts scores[:ken]

# 値の書き換えも同じ
puts '> scores[:ken] = 68'
puts '> puts scores[:ken]'
scores[:ken] = 68
puts scores[:ken]

# 要素数、キーの一覧
puts '> puts scores.size()'
puts scores.size()
puts '> puts scores.keys()'
puts scores.keys()

# 該当するキーがあるか確認
puts '> puts scores.has_key?(:gom)'
puts scores.has_key?(:gom)
puts '> puts scores.has_key?(:tom)'
puts scores.has_key?(:tom)
