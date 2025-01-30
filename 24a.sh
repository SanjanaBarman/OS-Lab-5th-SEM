read -p "Enter lower limit: " lowlim
read -p "Enter upper limit: " uperlim
echo "The prime numbers between "$lowlim" - "$uperlim "are: "
for ((i = lowlim; i <= uperlim; i++))
    do
    flag=1
    for ((j = 2; j <= ${i}/2; j++))
    do
        if((!(i % j)))
        then
            flag=0
        fi
    done
    if((flag))
    then
        echo $i
    fi
done