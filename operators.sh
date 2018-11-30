# arithmatic with variables
s1=1
s2=$s1
let s1=s1+3
echo $s2 $s1

if [[ $s1 != $s2 ]]; then
  echo diff..
fi

# also applied to string
s1="JinHeo"
s2="JinHeo"
if [[ $s1 = $s2 ]]; then
  echo same string..
else
  echo diff string..
fi

# check "not null" by -n
if [[ -n $s1 ]]; then
  echo not null...
fi

$s3

# check "null" by -z
if [[ -z $s3 ]]; then
  echo null...
fi

# arithmetic relational operators
  # -lt : <
  # -gt : >
  # -le : <=
  # -ge : >=
  # -eq : ==
  # -ne : !=

# sed and awk
  # sed : stream editor
  # sed replace "to_be_replaced" by "replaced" of /tmp/dummy
sed 's/to_be_replaced/replaced/g' /tmp/dummy
  # sed shows all lines except 3~5 liens
sed 3, 5d /tmp/dummy

  # awk : manipulation of datafiles, text retrieval and processing
  # awk scans a pattern and perform an action for every matched pattern
  # strings of /tmp/dummy containing "test" are printed
awk '/test/ {print}' /tmp/dummy
  # print the number of strings of /tmp/dummy containing "test"
awk '/test/ {i=i+1} END {print i}' /tmp/dummy

# grep, wc, and sort
  # grep : print lines matching a search pattern
grep "look for this" /var/log/message -c # -c : count option

  # wc : count lines words, and bytes
wc --words --lines --bytes /tmp/dummy

  # sort : sort lines of text files
sort /tmp/dummy

# bc and tput
  # bc : a calculator programming language
bc -q
  # sqrt(9)
  # while(i != 9){ i=i+1; print i }

  # tput : init a terminal or query terminfo database

tput cup 10 4
tput reset
tput cols

# additionl refer : http://man7.org/linux/man-pages/
