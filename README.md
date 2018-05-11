# My Configurations

I put everything here that’s not private so I can reuse it.

I was inspired by [Mathias Bynens](https://github.com/mathiasbynens/dotfiles).

* **R** contains an installation script that I use everywhere. It also contains a script to update all packages.
* **common** contains all my bash-related files.

I haven’t yet created a .osx file in my home directory. I’m still researching the incredible number of options available.

I made symlinks from my home directory into the **common** folder for the bash-related things. This way, I avoid using my home directory as a git repository. There are four symlinks I create after cloning the repository. I prefer to make `src` in my home folder, so I'll refer to that.

```
ln -s ~/src/configuration/common/.aliases .aliases
ln -s ~/src/configuration/common/.bash_functions .bash_functions
ln -s ~/src/configuration/common/.bashrc .bashrc
ln -s ~/src/configuration/common/.gitconfig .gitconfig
ln -s ~/src/configuration/common/.my_prompt
```

Now you can log out and back in. Yes, I know you can source `.bashrc`, but I prefer to have a clean environment, with no surprises from the existing session.
