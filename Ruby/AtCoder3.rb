#【第7問】ABC085B - Kagami Mochi
# 整数の入力
n = gets.to_i
ans = n.times.map { gets.to_i }
# 「何段積み上げられるか」を出力
# uniqメソッド：配列から重複を取り除く
puts ans.uniq.length


#【第8問】ABC085C - Otoshidama
# スペース区切りの整数の入力
n, y= gets.chomp.split.map(&:to_i)
# ありえない場合の初期値：-1
xi, xj, xk = -1, -1, -1
# nまで繰り返す。
(0..n).each do |i|
    (0..n - i).each do |j|
       if i * 10000 + j * 5000 + (n - i - j) * 1000 == y
        xi, xj, xk = i, j, n - i - j
       end
    end
end
# 出力
puts "#{xi} #{xj} #{xk}"


#【第9問】ABC049C - 白昼夢
# データの入力
s = gets.chomp.to_s
# %w：配列を要素はスペース区切りで作る。
# gsub：マッチした部分をすべて置換
%w(eraser erase dreamer dream).each{ |w| s = s.gsub(w," ") }
s = s.gsub(" ","")
# 出力
puts s == "" ? "YES" : "NO"
