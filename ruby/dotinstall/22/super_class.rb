# クラスの継承

class User

    @@count = 0
    VERSION = 1.1
    attr_accessor :name

    def initialize(name)
         @name = name
         @@count += 1
    end

    def self.Info()
        puts "#{VERSION} : User Class, #{@@count} instances."
    end

    def sayHi()
        puts "Hi #{@name}"
    end
end

class AdminUser < User
    def sayHello()
        puts "hello from #{@name}"
    end

    def sayHi()
        puts "hi! from admin!"
    end
end


tom = AdminUser.new("tom")
tom.sayHi
tom.sayHello
