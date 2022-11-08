#!/usr/bin/env zsh

name="$1"
# name="${1%.tex}"

function __compile () {
  lualatex -synctex=1 -shell-escape -interaction=nonstopmode -file-line-error "$1"
}

function compile () {
  log=$(mktemp)
  echo "-------------> No.$2 compile <-------------"
  if [[ "$2" -eq 3 ]] {
    __compile "$1"
    exit="$?"
  } else {
    __compile "$1" > "$log"
    exit="$?"
  }

  echo "Exit code: $exit"
  if [[ "$exit" -ne 0 ]] {
    if [[ "$2" -ne 3 ]] {
      cat "$log"
    }
    echo "-------------> See log above <-------------"
    echo "No.$2: Failed!"
    exit "$exit"
  }
  rm "$log"
}

compile "$name" "1" && \
  biber "$name" && \
  compile "$name" "2" && \
  compile "$name" "3"
