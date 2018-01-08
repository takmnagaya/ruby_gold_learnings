a = nil && 1
p a # => nil
b = 1 && 2
p b # => 2

a = nil || 1
p a # => 1
b = 1 || 2
p b # => 1

c = c || 1
p c # => 1
d ||= 1
p d # => 1
