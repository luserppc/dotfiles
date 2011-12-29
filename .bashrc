#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export LEDGER="/home/jpiasetz/Documents/Ledger/ledger.dat"
export LEDGER_PRICE_DB="/home/jpiasetz/Documents/Ledger/prices.db"
