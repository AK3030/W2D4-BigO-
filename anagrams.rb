def first_anagram?(string, target)
  perms = string.chars.permutation.to_a
  perms.map! { |el| el.join }
  perms.include?(target)
end

def second_anagram?(string, target)
  string = string.split("")
  target = target.split("")

  while !target.empty? && !string.empty?
    char = target[0]
    target = target.drop(1)
    return false if !string.index(char)
    idx = string.index(char)
    string.delete_at(idx)
  end
  
  return true if string.empty? && target.empty?
  false
end

def third_anagram?(string, target)
  string.split("").sort == target.split("").sort
end


def fourth_anagram?(string, target)
  hsh = Hash.new {0}
  string.each { |el| hsh[el] += 1}
  target.each { |el| hsh[el] -= 1}
  hsh.all? { |k,v| v == 0 }
end

hsh = Hash.new {0}

p third_anagram("elvis", "lies")
