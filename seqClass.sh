#!/bin/bash
seq=$1
seq=$(echo $seq | tr a-z A-Z) 
if [[ $seq =~ ^[ACGTU]+$ ]]; then
#sequence can have these letters
  if [[ $seq =~ T ]]; then
    echo "The sequence is DNA"
#if there is a T is DNA
  elif [[ $seq =~ U ]]; then
    echo "The sequence is RNA"
#if there is a U is RNA
  else
    echo "The sequence can be DNA or RNA"
#if there T and U can be both
  fi
else
  echo "The sequence is not DNA nor RNA"
#if there isnt any letter 
fi
motif=$(echo $2 | tr a-z A-Z)
if [[ -n $motif ]]; then
  echo -en "Motif search enabled: looking 4 motif '$motif' in sequence '$seq'... "
  if [[ $seq =~ $motif ]]; then
    echo "MOTIF FOUND"
  else
    echo "NOT FOUND"
  fi
fi

