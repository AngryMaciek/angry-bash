# Bash configs
*Maciej Bak*  
*Swiss Institute of Bioinformatics*

My configuration and extensions for the bash.
#### Setup: 
```
$ cd $HOME
$ git clone https://github.com/AngryMaciek/custom-bash.git
# backup current bash configuration
$ mv .bashrc .bashrc_backup
$ ln -s custom-bash/bashrc .bashrc
$ touch custom-bash/bashrc.local
# copy all the current local bash configs into bashrc.local
```

#### Repository

| File/Directory  | Description |
| ------ | ------ |
| README.md | (this file) |
| bashrc | main config file |
| functions | custom system commands |
| prompt | prompt configuration |
| completion_scripts | bash completion scripts |
| LICENSE | GPL v3 license |

#### License

GNU General Public License 3
