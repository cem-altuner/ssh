# <b>Checking for existing SSH keys</b>



## **Step 1**

Open Terminal.

Enter ls `-al ~/.ssh`  to see if existing SSH keys are present.

```
$ ls -al ~/.ssh
# Lists the files in your .ssh directory, if they exist
```

## **Step 2**

Check the directory listing to see if you already have a public SSH key. By default, the filenames of supported public keys for GitHub are one of the following.

- _id_rsa.pub_
- _id_ecdsa.pub_
- _id_ed25519.pub_

## **Step 3**

- If you don't have a supported public and private key pair, or don't wish to use any that are available, generate a new SSH key.

- If you see an existing public and private key pair listed (for example, id_rsa.pub and id_rsa) that you would like to use to connect to GitHub, you can add the key to the ssh-agent.

