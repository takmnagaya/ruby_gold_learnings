class Hoge
  @@name = 'test'
  def initialize(no: 0)
    @no = no
  end

  def name
    @@name
  end

  def huga
    @@huga
  end

  def no
    @no
  end

  def number
    @number
  end
end

h = Hoge.new
p h.name # => 'test'

begin
  h = Hoge.new
  p h.huga # => 例外発生
rescue => e
  p e
end

h = Hoge.new(no: 1)
p h.no # => 1

h = Hoge.new(no: 4)
p h.number # => nil
