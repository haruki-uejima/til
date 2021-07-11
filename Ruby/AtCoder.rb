#【練習】PracticeA - Welcome to AtCoder
# 整数の入力
a = gets.to_i
# スペース区切りの整数の入力
b, c = gets.chomp.split.map(&:to_i)
# 文字列の入力
s = gets.chomp
# 出力
puts "#{a+b+c} #{s}"


#【第1問】ABC086A - Product
# スペース区切りの整数の入力（1行に複数の数値が入力された時の鉄板）
a, b = gets.chomp.split.map(&:to_i)
# 偶数奇数を判定する組み込みメソッド
puts (a * b).odd? ? 'Odd' : 'Even'


#【第2問】ABC081A - Placing Marbles
# N行のデータの入力
n = gets.chomp.to_s
# 「1」をカウントする
puts n.count("1")


#【第3問】ABC081B - Shift only
# N行のデータの入力
n = gets.chomp.to_s
# スペース区切りの整数の入力
a = gets.chomp.split.map(&:to_i)
cnt = 0
# 全てが偶数であるか判定する：all?
while a.all?(&:even?) do
    a = a.map { |t| t / 2 }
    # インクリメント
    cnt += 1
end
# 「2で割れた回数」を出力
puts cnt
