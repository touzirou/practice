# クラスメソッド クラスから直接呼び出すことが出来る

class User

    @@count = 0
    VERSION = 1.1

    def initialize()
         @@count += 1
    end

    def self.Info()
        puts "#{VERSION} : User Class, #{@@count} instances."
    end

end

User.new
User.new
User.new
User.new

User.Info
puts User::VERSION
