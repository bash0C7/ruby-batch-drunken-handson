class Thorgrep2 < Thor
  desc "grep PATTERN FILE...", "複数のファイルをgrepするよ"
  def grep(pattern, *files)
    files.each {|file|
      open(file).each_line {|line| puts line if line =~ /#{pattern}/}
    }
  end
end