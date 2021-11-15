#!/bin/bash
echo "Enter Your e-mail:"
read email
echo ""

ssh-keygen -t rsa -b 4096  -C "$email"  -f ~/.ssh/id_ed25519 -q -N ""
eval "$(ssh-agent -s)"

#Add SSH key to SSH agent
read -p "Enter file in which to save the key (~/.ssh/id_ed25519):" path
path=${path:-~/.ssh/id_ed25519}
ssh-add $path

echo ""
echo  Copy following key to clipboard:
cat $path
