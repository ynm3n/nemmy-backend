#!/bin/zsh

check_requrired_command() {
  for cmd in "$@"
  do
    if ! command -v $cmd &> /dev/null
    then
      echo -e "\033[0;31mplease install $cmd!\033[0m"
      exit 1
    fi
  done
}

main() {
  check_requrired_command task docker
}

main
