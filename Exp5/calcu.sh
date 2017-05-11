i="y"
s=0
echo "Enter the first number"
read n1
echo "Enter the second number"
read n2

while [ $i = "y" ]
do
	echo "1.Addition"
	echo "2.Subtraction"
	echo "3.Multiplication"
	echo "4.Division"
	echo "5.Remainder"
	echo "Enter your choice"
	read ch

	case $ch in
		1)s=`expr $n1 + $n2`
		echo "Sum="$s;;
		2)s=`expr $n1 - $n2`
                echo "Difference="$s;;
		3)s=`expr $n1 \* $n2`
                echo "Product="$s;;
		4)s=`expr $n1 / $n2`
                echo "Quotient="$s;;
		5)s=`expr $n1 % $n2`
                echo "Modulus="$s;;
		*)echo "Invalid";;
	esac
	echo "Do you want to continue?"
	read i
	if [ $i != "y" ]
	then
		exit
	fi
done
