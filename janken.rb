class Player
  def hand
      puts "----------------------"
      puts "数字を入力してください。"
      puts "0:グー, 1:チョキ, 2:パー"
      player_hand = gets.chomp
      while true
      if player_hand == "0" || player_hand =="1" || player_hand =="2"
          return player_hand.to_i
      else
          puts "----------------------"
          puts "0〜2の数字を入力してください。"
          puts "0:グー, 1:チョキ, 2:パー"
          player_hand = gets.chomp
          end
      end
  end
end
class Enemy
  def hand
      enemy_hand = rand(3)
  end
end
class Janken
  def pon(player_hand, enemy_hand)
      janken = ["グー", "チョキ", "パー"]
      puts "相手は#{janken[enemy_hand]}です。"
      while true
      if player_hand == enemy_hand
          puts "引き分けです。"
          return true
      elsif (player_hand == 1 && enemy_hand == 0) || (player_hand == 2 && enemy_hand == 1) ||  (player_hand == 0 && enemy_hand == 2)
          puts "あなたの負けです。"
          return false
      else
          puts "あなたの勝ちです。"
          return false
          end
      end
  end
end
class GameStart
  def self.jankenpon
      player = Player.new
      enemy = Enemy.new
      janken = Janken.new
      # 変数「next_game」に「true」を代入しましょう。
      # 「next_game」が「false」だと繰り返し処理を終了し、「true」だと繰り返し処理を継続します。
      next_game = true
      while next_game
        if next_game
          true
        else
          next_game
          false
        end
        # 変数「next_game」にじゃんけんを実行して返ってきた値(戻り値)を代入します。
        #「janken.pon(player.hand, enemy.hand)」でじゃんけんを実行しています。
        next_game = janken.pon(player.hand, enemy.hand)
      end
    end
  end
  # クラス名を使ってjankenponメソッドを呼び出します。
  GameStart.jankenpon