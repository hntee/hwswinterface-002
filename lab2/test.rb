
file_string = <<-STRING
Science isn't about why, it's about why not?

1 1 1 1 1 1

5 352

9 austinpowers

7 93

600

iii
STRING

(50..100).each do |i|
  temp = file_string.gsub('iii', i.to_s)
  File.open("defuse", 'w') { |file| file.write(temp) }
  system "./bomb < defuse > test"
  contents = File.open("test", "rb").read
  if content.include?("BOOM")
  	next
  else
  	p i
  end
end