# <b>About SSH</b>

SSH, or Secure Shell, is a remote management protocol that allows users to control and organize their servers over the internet. SSH was created as a secure replacement for unencrypted Telnet.

SSH uses encryption technique to ensure that all communications to & from the remote server are encrypted. It provides a mechanism to authenticate a remote user, transfer inputs from the client to the host, and send the output back to the client.

As you know, we often use the git version control system when submitting projects to Github. It asks us for username and password every time we commit. After these steps, you will now be able to push without the need for a username and password.

If you don't have any SSH keys or want to check if they exist
- [Checking for existing SSH keys](./check-ssh.md)

If you want to create new SSH keys 
- [Generating a new SSH key](./check-ssh.md)



# <b>Adding a new SSH key to your GitHub account</b>


As Kloia, as we are the Security audit, It's neccesary to add an ssh key to your Github account.

Before adding a new SSH key to your account on GitHub.com, you should have existing SSH keys.

&nbsp;

# **Web Browser**

## **Step 1**

Copy the SSH public key to your clipboard.

If your SSH public key file has a different name than the example code, modify the filename to match your current setup. When copying your key, don't add any newlines or whitespace.

### **Linux**


```
$ cat ~/.ssh/id_ed25519.pub
# Then select and copy the contents of the id_ed25519.pub >file
# displayed in the terminal to your clipboard 
```

### **Windows**


```
$ clip < ~/.ssh/id_ed25519.pub
# Copies the contents of the id_ed25519.pub file to your clipboard
```

### **Macos**
	

```
$ pbcopy < ~/.ssh/id_ed25519.pub
# Copies the contents of the id_ed25519.pub file to your clipboard
```

## **Step 2**
In the upper-right corner of any page, click your profile photo, then click **Settings.**

<img src="https://docs.github.com/assets/images/help/settings/userbar-account-settings.png" width="208">

&nbsp;
## **Step 3**
In the user settings sidebar, click SSH and GPG keys.

<img src="https://docs.github.com/assets/images/help/settings/settings-sidebar-ssh-keys.png" width="308">

&nbsp;
## **Step 4**
Click **New SSH key** or Add **SSH key**.

<img src="https://docs.github.com/assets/images/help/settings/ssh-add-ssh-key.png" width="708">

&nbsp;
## **Step 5**
In the "Title" field, add a descriptive label for the new key. For example, if you're using a personal Mac, you might call this key "Personal MacBook Air".

<img src="https://docs.github.com/assets/images/help/settings/ssh-key-paste.png" width="708">

&nbsp;
## **Step 6**
Paste your key into the **"Key"** field.

<img src="https://docs.github.com/assets/images/help/settings/ssh-add-key.png" width="208">

&nbsp;
## **Step 7**
If prompted, confirm your GitHub password.

<img src="https://docs.github.com/assets/images/help/settings/sudo_mode_popup.png" width="308">
