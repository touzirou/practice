# 変数を使ってみる
# 変数名の最初の文字は英小文字orアンダースコア
msg = "hello world"

puts msg

msg = "hello world again"

puts msg

# 定数を使ってみる
# 定数名は最初の文字が英大文字
VERSION = 1.1

puts VERSION

# 定数は書き換えようとしても警告が出るのみで処理は継続される
VERSION = 2.0

puts VERSION
