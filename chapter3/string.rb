p 'aaa'"bbbbb" # => aaabbbbb こんな書式もOK!

class Hoge
  def to_s
    'hogeeeee'
  end
end
hoge = Hoge.new
p "#{hoge}hogehoge" # => hogeeeeehogehoe 文字列展開はインスタンスの`to_s`メソッドによって展開される

p '1.9'.to_i # => 1
p '1.9aaa'.to_f # => 1.9
p '12aaa'.to_i # => 12

# sprintf
p sprintf("%#b", 16) # => 0b10000 2進数
p sprintf("%#o", 16) # => 020 8進数
p sprintf("%#x", 16) # => 0x10 16進数
p sprintf("%#d", 16) # => 16 10進数

p sprintf('%02d', 2)
p sprintf('%03d', 2)
p sprintf('%06.2f', 2.1) # => 002.10 .も含めた桁数が6で小数点以下の桁数は2
