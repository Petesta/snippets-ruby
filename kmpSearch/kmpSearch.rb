def kmp_search(str, substr)
  i = 0
  j = 0
  t = t_table(str)

  until j + i >= str.length 
    if substr[i] == str[j + i]
      if i == substr.length - 1
        puts "Substring #{substr} was found string #{str}" 
        return true
      end
      i += 1
    else
      j += i - t[i]
      if t[i] > -1
        i = t[i]
      else
        i = 0
      end
    end
  end
  puts "Substring not found in string"
  return false
end

def t_table(str)
  i = 2
  sub = 0
  t = [-1, 0]
  while (i < str.length)
    if str[i - 1] == str[sub]
      sub += 1
      t[i] = sub
      i += 1
    elsif sub > 0
      sub = t[sub]
    else
      t[i] = 0
      i += 1
    end
  end
  return t
end

kmp_search("hihello", "hello")
kmp_search("asdfoiasnfdpetenasgd", "hasdfdsfadsello")
