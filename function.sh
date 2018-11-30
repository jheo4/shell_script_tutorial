# Function example
function quit {
  exit
}
function hello {
  echo Hello!
}
function e {
  echo $1
  if [[ -z $1 ]]; then
    echo input param is NULL
  else
    echo $1
  fi
}

e
e Test
e QQQQ
hello
quit
echo test
