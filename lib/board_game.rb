class Board
  def self.print_board(sym1 = nil, sym2 = nil, arr1 = nil, arr2 = nil)
    (1..9).each do |i|
      if arr1.include?(i)
        print " #{sym1} "
      elsif arr2.include?(i)
        print " #{sym2} "
      else
        print " #{i} "
      end
      print '|' unless (i % 3).zero?
      puts "\n" if (i % 3).zero?
    end
  end
end
