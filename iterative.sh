# For statement
# command execution by $(CMD)
for i in $(ls); do
  echo item: $i
done

for i in `seq 1 10`; do
  echo $i
done

# While statement
COUNTER=0
while [ $COUNTER -lt 10 ]; do
  echo counter value : $COUNTER
  let COUNTER=COUNTER+1
done

# Until
COUNTER=20
until [ $COUNTER -lt 10 ]; do
  echo counter vlaue : $COUNTER
  let COUNTER=COUNTER-1
done

