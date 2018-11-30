VAL1=10
VAL2=10

if [ $VAL1 -lt $VAL2 ]; then
  echo $VAL1 is less than $VAL2
elif [ $VAL1 -gt $VAL2 ]; then
  echo $VAL1 is greater than $VAL2
else
  echo $VAL1 and $VAL2 are same
fi
