# クラス

class User
    def initialize(name)
        @name = name
    end
    def sayHi()
        puts "Hi i am #{@name}"
    end
end

tom = User.new("tom")
tom.sayHi
tarou = User.new("tarou")
tarou.sayHi
