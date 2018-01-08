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
