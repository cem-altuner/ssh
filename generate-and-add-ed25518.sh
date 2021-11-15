#!/bin/bash
echo "Enter Your e-mail:"
read email
echo ""


#Create SSH key with ed25519 algorithm
ssh-keygen -t ed25519 -C "$email" -f ~/.ssh/id_ed25519 -q -N ""
eval "$(ssh-agent -s)" 

#Add SSH key to SSH agent
path=${path:-~/.ssh/id_ed25519}
ssh-add $path
echo ""
echo  Copy following key to clipboard:
cat $path.pub
