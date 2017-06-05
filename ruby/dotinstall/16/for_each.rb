# for
for i in 15..20 do
    p i
end

# ハッシュも可能
scores = {tom: 10, tarou: 89}
for name, score in scores do
    puts "#{name} : #{score}"
end

# each
(30..35).each do |idx|
    p idx
end

["test", "sample"].each do |name|
    p name
end

{sam: 20, kimura: 99}.each do |name, score|
    p "#{name} : #{score}"
end
