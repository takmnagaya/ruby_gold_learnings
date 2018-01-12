p :aa
p :'aa'
a = 'hogehoge'
p :"#{a}aa"
p %s(hoge)
p 'hoge'.to_sym
p :hoge.to_s

puts 'シンボル'
puts %Q(同値 #{:sym == :sym})
puts %Q(同値(より厳密な値比較) #{:sym.eql?(:sym)})
puts %Q(同一 #{:sym.equal?(:sym)})
puts '文字列'
puts %Q(同値 #{'str' == 'str'})
p %Q(同値(より厳密な値比較) #{'str'.eql?('str')})
p %Q(同一 #{'str'.equal?('str')})

v1 = 'aaaaaaaa'
puts %Q(v1 value:#{v1} object_id:#{v1.object_id})
v2 = v1
puts %Q(v2 value:#{v2} object_id:#{v2.object_id})
puts %Q(v1.equal?(v2) #{v1.equal?(v2)})
v2 = 'bbbbbb'
puts 'v2に値代入'
puts %Q(v2 value:#{v2} object_id:#{v2.object_id})
puts %Q(v1.equal?(v2) #{v1.equal?(v2)})

v1 = 'aaaaa'
def func(v1)
  puts %Q(func v1 value:#{v1} object_id:#{v1.object_id})
end

puts %Q(v1 value:#{v1} object_id:#{v1.object_id})
func(v1)

puts '破壊的メソッド'
def func2(v1)
  v2 = v1
  v2.chop!
  puts %Q(func2 v2 value:#{v2} object_id:#{v2.object_id})
end

puts %Q(v1 value:#{v1} object_id:#{v1.object_id})
func2(v1)
puts %Q(v1 value:#{v1} object_id:#{v1.object_id})
