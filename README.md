# Billy Vong's dotfiles

## Installation

```
git clone https://github.com/billyvg/dotfiles.git ~/.dotfiles
cd .dotfiles
cp post-commit ./.git/hooks/
```

Edit the README.md with your name and modify or copy the dotfiles as need.

``` git commit -m "Do the magic!" ```

The post-commit hook will link all the hidden dotfiles in this directory from your home directory.

