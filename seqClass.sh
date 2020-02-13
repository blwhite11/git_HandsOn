#!/bin/bash
seq=$1
seq=$(echo $seq | tr a-z A-Z) 
if [[ $seq =~ ^[ACGTU]+$ ]]; then
  if [[ $seq =~ T ]]; then
    echo "The sequence is DNA"
  elif [[ $seq =~ U ]]; then
    echo "The sequence is RNA"
  else
    echo "The sequence can be DNA or RNA"
  fi
else
  echo "The sequence is not DNA nor RNA"
fi
