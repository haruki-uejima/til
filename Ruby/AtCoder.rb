# PracticeA - Welcome to AtCoder
# 整数a,b,cと文字列sが与えられます。
# a+b+cの計算結果と、文字列sを並べて表示する。

# 整数の入力
a = gets.to_i
# スペース区切りの整数の入力
b, c = gets.chomp.split.map(&:to_i)
# 文字列の入力
s = gets.chomp
# 出力
puts "#{a+b+c} #{s}"


# ABC086A - Product
# AtCoDeerくんは二つの正整数a,bを見つけました。
# aとbの積が偶数か奇数か判定してください。

# スペース区切りの整数の入力（1行に複数の数値が入力された時の鉄板）
a, b = gets.chomp.split.map(&:to_i)
# 偶数奇数を判定する組み込みメソッド
puts (a * b).odd? ? 'Odd' : 'Even'


# ABC081A - Placing Marbles
# 1,2,3の番号がついた3つのマスからなるマス目を持っています。
# 各マスには0か1が書かれており、マスiにはsiが書かれています。
# 1が書かれたマスに置かれたビー玉がいくつあるか求めてください。

# N行のデータの入力
n = gets.chomp.to_s
# 「1」をカウントする
puts n.count("1")


# ABC081B - Shift only
# 黒板にN個の正の整数 A1,.,ANが書かれています。
# 黒板に書かれている整数がすべて偶数であるとき，次の操作を行うことができます。
# 黒板に書かれている整数すべてを2で割ったものに置き換える。
# 最大で何回操作を行うことができるかを求めてください。

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
