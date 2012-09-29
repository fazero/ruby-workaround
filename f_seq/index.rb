def freq_seq(n)
  if n > 0
    seq = "1"
    (1...n).each{|i| seq = seq.scan(/(1{1,3}|2{1,3}|3{1,3})/).flatten.map{|element|element.size.to_s + element[0]}.join}
  else
    seq = nil
  end
  seq
end

p freq_seq(10) #=>"13211311123113112211"