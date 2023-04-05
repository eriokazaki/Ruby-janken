puts "じゃんけん・・・" 

def janken
  puts "0(グー), 1(チョキ), 2(パー)、3(戦わない)"
  player_hand = gets.to_i    
  program_hand = rand(3) #0以上3未満(0,1,2)からランダムに選択される。

  if player_hand == 3
    puts "じゃんけんが放棄されました。ゲームを終了します。"
    puts "---------------------------------------------------"
    exit
  end

  puts "ホイ！"
  puts "---------------------------------------------------"

  jankens = ["グー", "チョキ", "パー"]  

  puts "あなた：#{jankens[player_hand]}を出しました"
  puts "相手：#{jankens[program_hand]}を出しました"
  puts "---------------------------------------------------"

    #if文で条件分岐
  if player_hand == program_hand
    puts "あいこで・・・"
    return true
  elsif (player_hand == 0 && program_hand == 1) || 
        (player_hand == 1 && program_hand == 2) ||                     
        (player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです！"       
    puts "---------------------------------------------------"
    @janken_result = 1
    acchimuite        
  return false 
  else 
    puts "あなたの負けです。"
    puts "---------------------------------------------------"
    @janken_result = 2
    acchimuite
  end
end

def acchimuite 
  puts "あっち向いて〜"
  puts "0(上), 1(下), 2(右)、3(左)"
  player_hand = gets.to_i    
  program_hand = rand(4)
  
  acchimuite_way = ["上", "下", "右", "左"]
  
  puts "ホイ！"
  puts "---------------------------------------------------"

  puts "あなた：#{acchimuite_way[player_hand]}"
  puts "相手：#{acchimuite_way[program_hand]}"
  puts "---------------------------------------------------"
  
  if @janken_result == 1 && player_hand == program_hand
    puts "あなたの勝ちです！"
    return false
  elsif @janken_result == 2 && player_hand == program_hand
    puts "あなたの負けです！"     
    puts "---------------------------------------------------"     
    exit
  else 
    puts "じゃんけん・・・"
    janken
  end
end

next_game = true #あいこの時の処理

while next_game
    next_game = janken
end 

janken

