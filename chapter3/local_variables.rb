a = 1 if false
p a # => nil

begin
  p b # => 例外発生
rescue NameError => e
  p e
end

_c = 1

p _c

p hoge ||= 2
