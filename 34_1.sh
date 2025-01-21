#Write a shell script to find out palindrome numbers from a list of numbers (Numbers
#should be taken as command line argument)
is_palindrome(){
    num=$1
    temp=$num
    rev=0
    while [ $temp -gt 0 ]
    do
        digit=$((temp%10))
        rev=$((rev*10+digit))
        temp=$((temp/10))
    done
    if [ $num -eq $rev ]
    then 
        echo "$num is a palindrome number"
    else
        echo "$num is NOT a palindrome number"
    fi
}
if [ $# -eq 0 ]; then
    echo "Please provide a list of numbers as command line arguments."
    exit 1
fi
for num in "$@"
do
    is_palindrome "$num"
done

# OUTPUT
# ./34_1.sh 121 123 454 789
# 121 is a palindrome number
# 123 is NOT a palindrome number
# 454 is a palindrome number
# 789 is NOT a palindrome number