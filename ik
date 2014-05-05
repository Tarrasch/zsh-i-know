ik () {
  if (($#>=2))
  then
    echo "$0: Too many arguments, refusing to continue"
    return 1
  elif (($#>=1))
  then
    if [[ $1 != $(basename $PWD) ]]
    then
      echo "$0: Argument doesn't match PWD, refusing to continue"
      return 1
    fi
  else
    echo "Are you sure you want to do this? (y/n)"
    read -qs
  fi
}
