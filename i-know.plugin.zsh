# I know what I'm doing function
ik () {
  (($#>0)) && {
    [[ $1 != $(basename $PWD) ]] &&
      echo "$0: Argument doesn't match PWD, refusing to continue" &&
      return 1
  }
  echo "Are you sure you want to do this? (y/n)" && read -qs 
}

_ik () {
  reply=$(basename $PWD)
}
compctl -K _ik ik
