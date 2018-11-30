OPTIONS="Hello Quit"
: '
select opt in $OPTIONS; do
  if [ $opt = "Quit" ]; then
    echo quit...
    exit
  elif [ $opt = "Hello" ]; then
    echo Hello World!
  else
    clear
    echo bad option
  fi
done


select opt in $OPTIONS; do
  case $opt in
    "Hello" )
      echo Hello World!
      ;;
    "Quit" )
      echo quit...
      exit
      ;;
    * ) echo bad option;;
  esac
done
'

if [ -z $1 ]; then
  echo usage: $0 directory
  exit
fi
SRCD=$1
TGTD="./"
OF=home-$(date +%Y%m%d).tar
tar cvfP $TGTD$OF $SRCD

