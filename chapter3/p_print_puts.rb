class Hoge
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def to_s
    name.to_s
  end

  def inspect
    "'#{name}'"
  end
end
a = Hoge.new('a')
b = Hoge.new('b')
c = Hoge.new('c')

p a, b, c # 引数ごとに展開する inspectメソッドで展開する
puts a, b, c # 引数ごとに改行する to_sメソッドで展開する
print a, b, c # 引数ごとに改行しない to_sメソッドで展開する
