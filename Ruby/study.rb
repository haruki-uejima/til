puts 'hello'

#コンマを付けずに文字を格納
word = %w(文 字)
puts word

# シンボルの配列を格納
symbol = %i[a b c]
puts symbol

# ハッシュ
user = { name: 'uejima'}
puts user[:name]

# レンジ
(1..30).each { |day| puts "#{day}日"}

# 定数(定数を変更しようとすると警告が出る)
TEISU = 'uejima'
puts TEISU

# メソッド　キーワード引数(呼び出し側がわかりやすい)
def hello(name: 'unknown', show: false)
    puts name if show
end

hello(name: 'uejima', show: true)
hello(show: true, name: 'haruki')

#例外処理(不足の事態に備える)
begin
    # 例外発生箇所
    val = 10 / 0
    puts val
rescue => e
    # 例外発生時に実行される処理
    p e.backtrace
end
