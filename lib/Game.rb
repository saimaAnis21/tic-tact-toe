class Game

    def self.validmove(move, arr1, arr2)
        return false unless [1, 2, 3, 4, 5, 6, 7, 8, 9].include?(move)
        return false unless !arr1.include?(move) && !arr2.include?(move)
      
        true
      end
  
      def self.checkwin(move, arr)
        if move != 6 && move != 8
          return true if arr.include?(1) && arr.include?(4) && arr.include?(7)
      
          return true if arr.include?(1) && arr.include?(5) && arr.include?(9)
      
          return true if arr.include?(1) && arr.include?(2) && arr.include?(3)
      
          return true if arr.include?(3) && arr.include?(5) && arr.include?(7)
      
        end
      
        if move != 2 && move != 4
          return true if arr.include?(9) && arr.include?(8) && arr.include?(7)
      
          return true if arr.include?(9) && arr.include?(6) && arr.include?(3)
      
        end
      
        if move != 1 && move != 3 && move != 7 && move != 9
          return true if arr.include?(2) && arr.include?(8) && arr.include?(5)
      
          return true if arr.include?(4) && arr.include?(6) && arr.include?(5)
      
        end
        false
      end

  end