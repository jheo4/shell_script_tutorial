# Redirection
# There are three file descriptors; stdin(0); stdout(1); stederr(2)
#   stdout ↔ stderr
  grep da * 1>&2
  grep da * 2>&1
#   stdout → file
  ls -l > ls.txt
#   stderr → file
  grep da * 2> grep.txt
#   stdout and stderr → file
  rm -f $(fin / -name test) &> ./null.txt

# Pipes: use output as input of another program
  ls -l | sed -e "s/[aeio]/u/g"
  ls -l | grep "\.txt$"

