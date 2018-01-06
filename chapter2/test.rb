class Hoge
  def test
    1
  end
end

hoge = Hoge.new
p ARGV[0]
p ENV['PATH']
p hoge.test
