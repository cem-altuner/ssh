# <b>Generate key and add to Github</b>

Following commands generates ssh key without passphrase and saves your ssh key to default ssh file  path  `~/.ssh/` . If you want to use passphrase or save ssh file to another path, follow the [Generating a new SSH key](./generate-ssh.md) instructions.




## **Step 1**

- Open Terminal.

- Enter **"your-email-address@kloia.com"** field with your e-mail address and copy paste following commands to terminal .
- 
        ssh-keygen -t ed25519 -C "<your-email-address@kloia.com>" -f ~/.ssh/id_ed25519 -q -N ""
-
        eval "$(ssh-agent -s)" 
        ssh-add ~/.ssh/id_ed25519

- Script will save the file with supported format by gihub to  default ssh file  path  `~/.ssh/` . 
- If you have same file name with **"id_ed25519"** or **"id_rsi"** in your default ssh file path, terminal asks you for **Overwrite (y/n)**. Be careful and don't overwrite your own ssh file which you don't want to delete.


        >Agent pid 84773
        >Identitiy added: /home/cem/.ssh/id_ed25519 (cem.altuner@kloia.com)

## **Step 2**

- Read SSH key which you generated and copy to clipboard.

-        cat ~/.ssh/id_ed25519.pub
-        >ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINBVXj6ifMSXzfb9Bkfb/o4oXzGYZf+2vOPok7MDCWa5 cem.altuner@kloia.com    




## **Step 3**
In the upper-right corner of any page, click your profile photo, then click **Settings.**

<img src="./Assets/Github/settings.png" width="208">

&nbsp;
## **Step 4**
In the user settings sidebar, click SSH and GPG keys.

<img src="./Assets/Github/AccountSettings.png" width="200">

&nbsp;
## **Step 5**
Click **New SSH key**.

<img src="./Assets/Github/new_ssh_key.png" width="158">

&nbsp;
## **Step 6**
Add a label to **"Title"** field. Paste your key into the **"Key"** field and press Add **SSH Key** Button.

<img src="./Assets/Github/add_ssh_key.png" width="800">


You could check you connection with `ssh -T git@github.com`

        $ ssh -T git@github.com
        >Please type 'yes', 'no' or the fingerprint: yes
        >Warning: Permanently added 'github.com,140.82.121.4' (RSA) to the list of known hosts.
        >Hi cem-altuner-kloia! You've successfully authenticated, but GitHub does not provide shell access.
