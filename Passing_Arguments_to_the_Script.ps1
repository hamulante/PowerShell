echo "$($args[0])"
echo "$($args[1])"
echo "$($args[2])"

# echo "$2" is Bash syntax, can't be used here
# $args[0] is treated as literal strings when you're inside quotes, you should use sub-expression $($args[0]) to ensure the values are expanded properly.
# with echo "$args[0]", you will get output: a b c[0]

