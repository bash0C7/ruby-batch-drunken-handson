class Hello < Thor
  desc "say", "HELLO!って言うよ"
  def say
    puts 'hello'
  end
end