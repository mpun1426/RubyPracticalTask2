class Hoigame
  puts "\n [ あっち向いてホイ！アプリ  ver.1.0 ]\n \n "
  puts "  最初は グー！　 じゃいけん...\n "
  
  def initialize(win,lose)
    @win = win
    @lose = lose
  end
  
  def jaiken
    puts "    1. グー    2. チョキ    3. パー    4. 戦わない\n "
    myjk = gets.to_i
    comjk = rand(1..3)
    guchokipa = ["none", "グー", "チョキ", "パー"]
    
    if myjk == 4
      puts "   勝負を辞退しました。あっち向いてホイ！アプリを終了します。\n "
      
    elsif myjk == 1 || myjk == 2 || myjk == 3
      puts "   ホイ！\n "
      puts "あなた ： #{guchokipa[myjk]}"
      puts "お相手 ： #{guchokipa[comjk]}\n "
      if (myjk == 1 && comjk == 2) || (myjk == 2 && comjk == 3) || (myjk == 3 && comjk == 1)
        puts @result = @win
      elsif (myjk == 2 && comjk == 1) || (myjk == 3 && comjk == 2) || (myjk == 1 && comjk == 3)
        puts @result = @lose
      end
      
      while myjk == comjk
        puts "\n   あいこで...\n "
        jaiken
        return
      end
      
      puts "-----------------------------------------------------"
      puts "  あっち向いて...\n "
      puts "    1. 上   2. 下   3. 左   4. 右"
      mydirection = gets.to_i
      comdirection = rand(1..4)
      direction = ["none","上","下","左","右"]
      
      if mydirection == 1 || mydirection == 2 || mydirection == 3 || mydirection == 4
        puts "    ホイ！\n "
        puts "あなた：#{direction[mydirection]}"
        puts "お相手：#{direction[comdirection]}\n "
        if mydirection == comdirection
          puts "  \n  勝負あり！"
          puts "  あなたの#{@result}です！\n "
          return
        else
          while mydirection != comdirection
            puts "-----------------------------------------------------"
            puts "  最初は グー！　 じゃいけん...\n "
            jaiken
            return
          end
        end
        
      else
        #あっち向いてホイの誤入力告知
        puts "   半角数字の 1 〜 4 が正しく入力されませんでした。\n   再戦する場合は、はじめからやり直して下さい。\n "
        return
      end
      
    else
      #じゃいけんの誤入力告知
      puts "   半角数字の 1 〜 4 が正しく入力されませんでした。\n   再戦する場合は、はじめからやり直して下さい。\n "
      return
    end
    
  end
  
end

hoigame = Hoigame.new("勝ち","負け")
hoigame.jaiken