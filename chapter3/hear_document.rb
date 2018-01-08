a = <<HOGE
今日はみんなでキャンプに行きました。
楽しかったです。
HOGE
# 終端を表す識別子の前にスペースなどの文字列を記載してはならない。
puts a

# 階層を合わせるには`-`を使う
def hoge
  <<-HOGE
  今日はみんなでキャンプに行きました。
  楽しかったです。
  HOGE
end
puts hoge

# ヒアドキュメントでの文字列展開を無効にする
a = <<'HOGE'
#{hoge}
HOGE
puts a # => #{hoge}

