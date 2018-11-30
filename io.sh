# Input form user through "read"
echo Enter your first name and last name
read F_NAME L_NAME
echo Hi $F_NAME $L_NAME

# Arithmetic evaluation
# echo $(1+1) : don't work...
echo $((1+1))
echo $[1+1]

# fraction value
echo 3/4 | bc -l
echo 3/4 | bc -l

# return value of program
# cd : success(1), fail(0)
cd /dada &> ./null
echo rv: $?
cd $(pwd) &> ./null
echo rv: $?

# capturing a command output
DBS=`mysql -uroot -e"show databases"`
for b in $DBS; do
  mysql -uroot -e"show tables from $b"
done
