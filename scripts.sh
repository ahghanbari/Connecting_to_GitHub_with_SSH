

ssh-keygen -t rsa -b 4096 -C "your email address"

eval "$(ssh-agen -s)"
# ssh-add ~/.ssh/your-key-name
# if you did not change that:
ssh-add ~/.ssh/id_rsa

xclip -selection clipboard < ~/.ssh/id_rsa.pub

sudo apt install xclip
# or
sudo dnf install xclip
# or
sudo pacman -Sy xclip

ssh -T git@github.com

# creating project and git stuff ...
git remote add origin git@github.com:username/test.git
git push -u origin master

