a = if false
      2
    end
p a # => nil ローカル変数は作成され参照できる。

b = 1 if false
p b # => nil
