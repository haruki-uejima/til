# gets：標準入力を受け取る
# chomp：末尾の改行文字を削除する。
# to_i：データを整数に変換

# 1、1つのデータの入力（Rubyは半角スペースが入っても同じ）
s = gets.chomp
puts s

# 2、3行のデータの入力
s = gets.chomp
puts s
s = gets.chomp
puts s
s = gets.chomp
puts s
