#!/bin/bash


#Create SSH key with rsi algorithm
ssh-keygen -t rsa -b 4096  -C "$1"  -f ~/.ssh/id_ed25519 -q -N ""
eval "$(ssh-agent -s)"

#Add SSH key to SSH agent
path=${path:-~/.ssh/id_ed25519}
ssh-add $path
echo ""
echo  Copy following key to clipboard:
cat $path.pub
