# Connecting_to_GitHub_with_SSH

Hello guys <br />
In this rep we want to connect to github with ssh, in other word we want to push without giving passwd every time. (not just this, using ssh is much safer than reguler way)

In the first you have to have a GNU/linux Distribution OS :| of course I did not say that seriously, just being unix-like is enouch ...

forget last paragraph, even if you have windows you can use ssh, but please shift delete windows and install ubuntu for the sake of all of us.

Until now we have a unix-like os, open a terminal and run:
```
ssh-keygen -t rsa -b 4096 -C "your email address"
```
then read the std-in and anwser them :|
If you set fingerprint(passwd for you key) every time that you want to use your key you have to give your passwd, then i suggust don't set passwd. 
Running ssh -agent:

```
eval "$(ssh-agen -s)"

# ssh-add ~/.ssh/your-key-name
# if you did not change that:
ssh-add ~/.ssh/id_rsa
```
<img src=1.jpeg>

now it's time for putting public key to github account
you can copy that by hand(cat) or using(xclip):
```
xclip -selection clipboard < ~/.ssh/id_rsa.pub
```
If you don't have xclip:
```
sudo apt install xclip
# or
sudo dnf install xclip
# or
sudo pacman -Sy xclip
```
<img src=3.jpeg>
<img src=4.png>

After you have copied your pub key, go to your github account, setting, ssh and gpg keys, new ssh key (title  is no important) and add your pub key:
<img src=41.jpeg>

In this part you can check that your ssh working or not:

```
ssh -T git@github.com
```

<img src=2.jpeg>
And make your repository, set your remote config and push that:

```
# creating project and git stuff ...
git remote add origin git@github.com:username/test.git
git push -u origin master
```

Before running above code, you need to Add repository in github account and using that name instead of test.git >> your_rep_name.git <br />
You may need to use 'main' or ... instead of 'master'
Use 'git log' for seeing the name of HEAD branch, if you didn't change that, it is 'master'

<img src=5.png>

Distorting of the information was unnecessary because they were pub key not private, but better is safe than sorry.
<br />
babay @_@
