#!/bin/bash

arg_help() {
  echo "A 'very' advanced hello world program!"
  echo ""
  echo "Usage: $0 [options]"
  echo "  options:"
  echo "    -h, --help        Displays this message..."
  echo "    -d, --debug       Displays more verbose output"
  echo "    -y, --yes         Automatically answer yes to all prompts"
  echo "    -n, --no          Automatically answer no to all prompts"
  echo "    -o, --output      Declare output file"
}

set -e # Abort on error

# check given args
while [[ $# -gt 0 ]]; do
  case $1 in
    -o|--output)
      OUT="$2"
      shift # past argument
      shift # past value
      ;;
    -d|--debug)
      set -x # Verbose
      shift # past argument
      ;;
    -y|--yes)
      CHOICE="y"
      shift # past argument
      ;;
    -n|--no)
      CHOICE="n"
      shift # past argument
      ;;
    -h|--help)
      arg_help
      exit 0
      ;;
    -*|--*)
      echo "Unknown option: $1"
      echo "try $0 -h for available options..."
      exit 1
      ;;
  esac
done

if [ -z "$CHOICE" ]; then 
  read -p "Are you happy? " CHOISE
fi

case "$CHOICE" in
  [yY]* ) MOOD=" happy";;
  [nN]* ) MOOD=" sad";;
  * ) MOOD=""
esac

if [ -n "$OUT" ]
then 
  echo "Hello$MOOD world!" > "$OUT"
else 
  echo "Hello$MOOD world!"
fi
