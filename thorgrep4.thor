class Thorgrep4 < Thor
  desc "grep PATTERN FILE", "grepするよ"
  method_options :invert_match => :false, :type => :boolean, :aliases => '-v'
  def grep(pattern, file)
    open(file).each_line do|line|
      if options.invert_match?
        puts line unless line =~ /#{pattern}/
      else
        puts line if line =~ /#{pattern}/
      end
    end
  end
end