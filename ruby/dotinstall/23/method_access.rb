# メソッドのアクセス権

class User

    @@count = 0
    VERSION = 1.1
    attr_accessor :name

    def initialize()
         @@count += 1
    end

    def self.Info()
        puts "#{VERSION} : User Class, #{@@count} instances."
    end

    def sayHi()
        puts "Hi"
        sayPrivate
    end

    private
    def sayPrivate()
         puts "it's private"
    end
end

class AdminUser < User
    def sayHello()
        puts "hello "
        sayPrivate
    end

    def sayHi()
        puts "hi! from admin!"
    end
end

User.new.sayHi
AdminUser.new.sayHello
