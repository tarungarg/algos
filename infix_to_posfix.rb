$exp_1 = "A*(B+C)*D+C"
$exp_2 = "(a+b/c*(d+e)-f)"
$priority_1 = ["^"]
$priority_2 = ["*", "/"]
$priority_3 = ["+", "-"]
$breakets = ["(" , ")"]
$stack = []
$posfix = []

def check_operand(char)
  ($priority_1 + $priority_2 + $priority_3 + $breakets).include?(char)
end

def check_priority(char)
  if  $priority_1.include?(char)
    3
  elsif  $priority_2.include?(char)
    2
  elsif $priority_3.include?(char)
    1
  else
    0
  end
end

def stack_push(char)
  inner_stack = []

  if char == "("
    puts 'entered condition 1'
    $stack.push(char)
    return
  end

  if $stack.empty?
    puts 'entered condition empty'
    $stack.push(char)
    return
  end

  if char == ")"
    puts 'entered condition 2 ' + $stack.inspect
    $stack.reverse.each do |i|
      puts 'entered condition 2 ' + i
      if i == '('
        $stack.pop
        break;
      else
        $posfix.push($stack.pop)
        puts 'entered condition 2 ' + $posfix.inspect

      end
    end
  end

  if char != "(" && char != ")" && check_priority(char) <= check_priority($stack[-1])
    puts 'entered condition 3 ' + $stack.inspect + " char " + char
    $stack.reverse.each do |i|
      puts 'i ' + check_priority(i).to_s + " char " + check_priority(char).to_s
      if i == "(" || check_priority(i) < check_priority(char)
        $stack.push(char)
        break
      end

      if check_priority(i) >= check_priority(char)
        $posfix.push($stack.pop)
        # $stack.push(char)
      end
    end
  end

  if char != "(" && char != ")" && check_priority(char) > check_priority($stack[-1])
    puts 'entered condition 4 '
    $stack.push(char)
  end
end

def posfix_push(char)
    $posfix.push(char)
end
  
$exp_1.each_char do |char|
  puts '-----------------------------------------------' + char
  if check_operand(char)
    stack_push(char)
    puts ' stack ' + $stack.inspect
  else
    posfix_push(char)
    puts "posfix " + $posfix.inspect
  end
end

puts $exp_1
puts $posfix.join('').inspect
puts 'abcd^e-fgh*+^*+i-'
puts $stack.inspect


