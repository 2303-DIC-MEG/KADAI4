class Janken
    def initialize
        @options = { 
        0 => 'グー', 
        1 => 'チョキ', 
        2 => 'パー' 
        }
        @win_patterns = { 
        'グー' => 'チョキ', 
        'チョキ' => 'パー', 
        'パー' => 'グー' 
        }
    end

    def start
        instructions
        play
    end

    def instructions
        puts '最初はグー、じゃんけん...'
        @options.each { |name, key| puts " - #{key} => #{name}" }
    end

    def play
        player = @options[gets.to_i]
        computer = @options[@options.keys.sample]

        puts "あなたは#{player}"
        puts "相手は#{computer}"
        compare(player, computer)
    end

    def compare(player, computer)
        if player == computer
        draw
        return play
    end

        @win_patterns[player] == computer ? win : lose
    end

    def draw
        puts 'あいこでしょ'
    end

    def win
        puts 'あなたの勝ちです'
    end

    def lose
        puts 'あなたの負けです'
    end
end

j = Janken.new
j.start