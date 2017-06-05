# ミックスイン

module Debug
    def info()
        puts "debug start"
    end
end

class Player
    include Debug
end

class Monster
    include Debug
end

Player.new.info
