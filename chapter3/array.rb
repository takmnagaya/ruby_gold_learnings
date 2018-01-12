a = Array.new(3, 'a')
p a.map(&:object_id)
a[0].replace('b')
p a

a = Array.new(3) { 'a' }
p a.map(&:object_id)
a[0].replace('b')
p a

a = [0, 1, 2, 3, 4, 5]
p a[2, 3]
a[2, 3] = ['a']
p a # => [0, 1, 'a', 5]
a = [0, 1, 2, 3, 4, 5]
a[2, 1] = 'a', 'b', 'c'
p a # => [0, 1, 'a', 'b', 'c', 3, 4, 5]

puts '代入'
a, b, c = 1, 2, 3
p a
p b
p c

a = 1, 2
p a # => [1, 2]

a, b, c = 1, 2
p a
p b
p c # => nil

a, b, c = 1, 2, 3, 4
p a
p b
p c # => 3

a, b, *c = 1, 2, 3, 4
p a
p b
p c # => [3, 4]

puts '引数展開'
def hoge(a, *b)
  p a
  p b
end
hoge(1, 2, 3, 4, 5)
=begin
=> 1
=> [2, 3, 4, 5]
=end