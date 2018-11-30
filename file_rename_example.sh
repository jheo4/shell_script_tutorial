function check_file {
  if [[ -z $1 ]]; then
    echo "no files"
    exit
  fi
}

function descript_mod {
  if [[ $1 -lt 3 ]]; then
    shift
    for msg in "$@"; do
      echo $msg
    done
    exit
  fi
}


if [[ $1 = p ]]; then
  prefix=$2; shift ; shift
  check_file $1

  for file in $*; do
    mv ${file} $prefix$file
  done
  exit
elif [[ $1 = s ]]; then
  suffix=$2 ; shift; shift
  check_file $1

  for file in $*; do
    mv ${file} $file$suffix
  done
  exit
elif [[ $1 = r ]]; then
  shift
  descript_mod $# "usage : ./file_rename_example.sh r [expression] [replacement] files"
  OLD=$1 ; NEW=$2 ; shift ; shift
  for file in $*; do
    new=`echo ${file} | sed s/${OLD}/${NEW}/g`
    mv ${file} $new
  done
  exit
else
  p="./file_rename_example.sh p [prefix]"
  s="./file_rename_example.sh s [suffix] files"
  r="./file_rename_example.sh r [expression] [replacement] files"
  descript_mod $# "usage;" "$p" "$s" "$r"
  exit
fi
