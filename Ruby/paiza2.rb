# gets：標準入力を受け取る
# chomp：末尾の改行文字を削除する。
# to_i：データを整数に変換
# times do：繰り返す
# split：データをスペース区切りにして分割
# each do |a|：配列のデータをループ、パイプのなかの変数で参照できる。

# 1、N行のデータの入力（N：1行目の数）
n = gets.chomp.to_i

n.times do
    s = gets.chomp
    puts s
end

#2、3行のデータが1行にスペース区切りで与えられるので、分割して表示
s = gets.chomp
t = s.split
puts t[0]
puts t[1]
puts t[2]

#3、N行のデータが1行にスペース区切りで与えられるので、分割して表示
n = gets.chomp.to_i
s = gets.chomp
t = s.split
t.each do |a|
    puts a
end
