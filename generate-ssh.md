## **Generating a new SSH key and adding to ssh-agent**
&nbsp;
 
If you don't have any SSH key, you must generate a new SSH key to use for authentication. If you want to check your existing SSH keys follow instructions at [Checking for existing SSH keys](./check-ssh.md)

1. In order to generate ssh-key, run the code below by adding your e-mail address you use on github.
   
         $ ssh-keygen -t ed25519-sk -C "your_email@example.com"
      - If your system does not support the Ed25519 algorithm, use:
  
            $ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
  
   This creates a new SSH key, using the provided email as a label.

2. When you're prompted to "Enter a file in which to save the key," press Enter. This accepts the default file location.
   
         >  Enter a file in which to save the key (/home/you/.ssh/algorithm): [Press enter] 
3. At the prompt, type a secure passphrase.
 
         > Enter passphrase (empty for no passphrase): [Type a passphrase]
         > Enter same passphrase again: [Type passphrase again]



## **Adding your SSH key to the ssh-agent**

If you don't want to reenter your passphrase every time you use your SSH key, you can add your key to the SSH agent, which manages your SSH keys and remembers your passphrase.

&nbsp;

After you coplete to generate SSH key or have already one. 

### **Linux & Windows**

1. Use the following code to introduce ssh-key to our system.
   
         $ eval "$(ssh-agent -s)" 
         > Agent pid 38466 
  
   This creates a new SSH key, using the provided email as a label.

2. Add the ssh key to ssh agent by entering the code below with yuor key name that you have or created.
   
         $ ssh-add ~/.ssh/id_ed25519 



### **Mac**

1. Use the following code to introduce ssh-key to our system.
 
         $ eval "$(ssh-agent -s)" 
         > Agent pid 38466 
   This creates a new SSH key, using the provided email as a label.

2. If you're using macOS Sierra 10.12.2 or later, you will need to modify your ~/.ssh/config file to automatically load keys into the ssh-agent and store passphrases in your keychain.
   - Check to see if your ~/.ssh/config file exists in the default location.
  
         $ open ~/.ssh/config
   - If the file doesn't exist, create the file.
  
         $ $ touch ~/.ssh/config
   - Open your ~/.ssh/config file, then modify the file to contain the following lines with your SSH Key file name and path.
 
         Host *
           AddKeysToAgent yes 
           UseKeychain yes 
           IdentityFile ~/.ssh/id_ed25519 

3. Add the ssh key to ssh agent by entering the code below with yuor key name that you have or created.
   
         $ ssh-add ~/.ssh/id_ed25519 
