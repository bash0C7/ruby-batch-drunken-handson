class Thorgrep < Thor
  desc "grep PATTERN FILE", "grepするよ"
  def grep(pattern, file)
    open(file).each_line {|line| puts line if line =~ /#{pattern}/}
  end
end