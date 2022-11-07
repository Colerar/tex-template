#!/usr/bin/env zsh

name=${1%.tex}

function compile () {
  lualatex -synctex=1 -interaction=nonstopmode -file-line-error "$1"
  
}

function log () {
  echo "-------------> $1 <-------------"
}

compile "$name" > /dev/null && log "2nd compile" && \
  bibtex > /dev/null "$name" && \
  compile "$name" > /dev/null && log "3rd compile" && \
  compile "$name" 
