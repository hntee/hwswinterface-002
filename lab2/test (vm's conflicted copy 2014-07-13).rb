
file_string = <<-eos
Science isn't about why, it's about why not?

1 1 1 1 1 1

5 352

9 austinpowers

7 93

600

iii
eos

print 

(0..50).each do |i|
  temp = file_string.gsub('iii', i.to_s)
  File.open("defuse", 'w') { |file| file.write(temp) }
#  system "./bomb < defuse >> test"
  IO.popen("./bomb < defuse ").each do |line|
    if line.include?("BOOM")
      next
    end
    p line
  end
end
