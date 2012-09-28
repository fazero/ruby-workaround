
def f_req(n);
    seq = ""
    if n == 1;
      seq = "1"
    end
    if n == 2;
      seq = "11"
    end
    if n > 2;
      for i in range(2, n)
        p i
        newseq = ""
        count = 1
        for j in range(1, len(seq))
          if seq[j] == seq[j-1]
            count += 1
            continue
          else
            newseq += count.to_s + seq[j-1]
            count = 1
          end
        end
        seq = newseq + count.to_s + seq[-1]
      end
    end
    return seq
    end

p f_req(10)