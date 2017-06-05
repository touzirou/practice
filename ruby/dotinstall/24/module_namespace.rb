# モジュールで名前空間を指定
module Movie

    VERSION=1.1

    def self.encode
        puts "encoding"
    end

    def self.export
        puts "exporting"
    end
end

Movie.encode
Movie.export
puts Movie::VERSION
