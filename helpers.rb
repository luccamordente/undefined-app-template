def indent text, spaces = 2
  text.split(/\n/).map{ |line| "#{" " * spaces}#{line}" }.join("\n")
end

def error text
  indent "!!!!!! #{text} !!!!!!".red
end

def yn
  "[yn] ".blue
end

def bundle cmd = ""
  puts "\n"
  run "bundle #{cmd}"
  puts "\n"
end

