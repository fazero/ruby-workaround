def freq_seq(n)
  seq = "1"
  n > 0 ? (1...n).each{seq = seq.scan(/(1{1,3}|2{1,3}|3{1,3})/).flatten.map{|element|element.size.to_s + element[0]}.join} : seq = nil
  seq
end

p freq_seq(10) #=>"13211311123113112211"