function print_man {
  if [[ $1 -lt 3 ]]; then
    shift
    for msg in "$*"; do
      echo $msg
    done
    exit
  fi
}

criteria=$1
re_match=$2
replace=$3

print_man $# "usage" "./simple_file_rename_example.sh [criteria] [to be replaced] [replaced]"
for i in $(ls *$criteria*); do
  src=$i
  tgt=$(echo $i | sed -e "s/$re_match/$replace/")
  mv $src $tgt
done
