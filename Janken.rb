# 勝ち
def win
    puts "あっち向いて..."
    puts "0(上)1(右)2(下)3(左)"
    @my_direction = gets.to_i
    @enemy_direction = rand(4)
    @direction = ["上","右","下","左"]
    puts "ホイ！"
    puts "-------------------------"
    puts "あなたは#{@direction[@my_direction]}"
    puts "相手は#{@direction[@enemy_direction]}"
    puts "-------------------------"
    
    if @my_direction == @enemy_direction
    puts "あなたの勝ち"
    return false
    else
    return true
    end
end
    
    # 負け
def lose
puts "あっち向いて..."
puts "0(上)1(右)2(下)3(左)"        
@my_direction = gets.to_i
@enemy_direction = rand(4)
@direction = ["上","右","下","左"]
puts "ホイ！"
puts "-------------------------"
puts "あなた#{@direction[@my_direction]}"
puts "相手#{@direction[@enemy_direction]}"
puts "-------------------------"        
if @my_direction == @enemy_direction
    puts "あなたの負け"
    return false
    else
    return true
end
end

def result
    puts "ホイ！"
    puts "-------------------------"
    puts "あなたは#{@hands[@my_hand]}を出しました。"
    puts "相手は#{@hands[@enemy_hand]}を出しました。"
    puts "-------------------------"
end
def janken
puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
@hands = ["グー","チョキ","パー"]
@my_hand = gets.to_i
@enemy_hand = rand(3)

if @my_hand > 3
    puts "１〜３で選択してください"
    return true
elsif @my_hand == 3
    puts "うまく逃げ切れた。"
    return false
elsif @my_hand == @enemy_hand
    puts "あいこで"
    return true
elsif (@my_hand == 0 && @enemy_hand == 1) || (@my_hand == 1 && @enemy_hand == 2) || (@my_hand == 2 && @enemy_hand == 0)
    result
    win
    #puts "あなたの勝ち"
    
else
    result
    lose
    #puts "あなたの負け"
    
end end


next_game = true

while next_game 
    next_game = janken
end 


