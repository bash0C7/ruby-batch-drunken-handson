class Thorgrep3 < Thor
  desc "grep PATTERN FILE", "grepするよ"
  def grep(pattern, file = nil)
    (file ? open(file) : STDIN).each_line {|line| puts line if line =~ /#{pattern}/}
  end
end