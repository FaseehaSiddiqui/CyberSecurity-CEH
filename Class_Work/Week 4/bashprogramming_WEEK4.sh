
#Faseeha Siddiqui 26th march 2026 Thursday  CLASSWORK
#scenario 5 

echo "enter your username"
read name

if [ "$name" == "root" ]
then
    echo "Status: Adminitrator Privileges confirmed. proceeding with system scan"
else
    echo "Status: Standard user cleadetected. permission denied"

fi

#***********FOR AND WHILE LOOPS**************
#FOR LOOP


for i in {1..10}
do 
    echo "the value of i is $i"

done


#giving ports e.g for i in 80 443 8080 5555 do done
for i in 80 443 8080 5555
do 
    echo "performing scan on ip 192.168.10.1 on port $i"

done



#QUESTION 192.168.10.1 till 192.168.10.20 scan 1 till 20

for i in {1..20}
do 
    echo "performing scan on Ip address 192.168.10.$i"

done


#QUESTION 192.168.10.1  scan 1 till user input

echo "enter last ip address digit"
read ip

#for i in $(#seq 1 #"$ip")
do 
    echo "performing scan on Ip address 192.168.10.$i"

done


#QUESTION


echo "enter prefix" 
read prefix
echo "enter end"
read end

i= 1
while [ "$i" -le "$end" ]
do
    result= "$prefix""$i" 
    echo "performing scan on IP address $result"
    i=$(( i + 1 ))  
done




#QUESTION

echo "enter prefix" # e.g. 192.168.10.
read prefix
echo "enter end" # e.g. 10 for 192.168.10.1 to .10
read end

i=1
while [ "$i" -le "$end" ]
do
    result="${prefix}${i}" # Concat prefix + i, e.g. 192.168.10.1
    echo "performing scan on IP address $result"
    i=$((i + 1))  
done


#*******************FUNCTIONS*************************

#QUESTION


print_banner(){
    echo "______________"
    echo "tool version v12"
    echo "______________"
}
print_banner

for i in {1..10}
do
    print_banner
    echo "******************"
done


#QUESTION

# Saving script cmd args as globals (accessible in func)
arg1="$1"
arg2="$2"
echo "enter val 1"
read val1
echo "enter val 2"
read val2

test_scope(){
echo "inside the function, \$1 is: $1"
echo "inside the function, \$1 is: $2"
echo "using command line args value: $arg1"
echo "using command line args value: $arg2"

}
echo "___________________"
#calling the func
test_scope "$val1" "$val2"


#Question
echo "enter port"
read port

evaluate_port(){
    if [ "$port" -eq 22 ] || [ "$port" -eq 443 ]
    then
        echo "Port $port: SECURE PROTOCOL DETECTED"

    elif [ "$port" -eq 21 ] || [ "$port" -eq 23 ] || [ "$port" -eq 80 ] 

    then
        echo "WARNING $port: - Insecure plaintext protocol"

    else 
        echo "PORT $port: Unrecognized Port."
    
    fi
}

for i in 21 22 80 443 8080

do 
    evaluate_port "$port"

done