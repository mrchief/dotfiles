### Xcode Install

1. Install Xcode from the Mac App Store.
2. Install command line tools with `xcode-select --install`

### Homebrew Install

[Homebrew](http://brew.sh) is pretty much the defacto standard for installing nix stuff on OSX.
```bash
# install homebrew
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# check the install
$ brew doctor
```

### Languages

```bash
# install python stuff.
$ brew install python

# install / upgrade setuptools
$ pip2 install --upgrade setuptools

# install / upgrade pip
$ pip2 install --upgrade pip2

# list outdated pip stuff
$ pip2 list -o
```

### powerline stuff

```bash
# install fonts

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# needed for powerline-status
brew install coreutils

# install powerline status
pip2 install --user powerline-status
```

### fish shell

I like [fish](http://fishshell.com/) as a shell. If you have not heard of it you should check it out. For configuration, it's probably best to use [oh-my-fish](https://github.com/bpinto/oh-my-fish).

```bash
$ brew install fish

# use oh-my-fish for configuration
$ curl -L https://get.oh-my.fish | fish

# install powerline theme status: https://github.com/oh-my-fish/theme-bobthefish
omf install bobthefish
```

## Apps and Utils

```bash
# much better than ack
$ brew install ag

# install git
$ brew install git

# appstore installs
# install dropbox
# install iterm2
# install vlc
```

### Sublime text

 - Download and install latest from https://www.sublimetext.com/3
 - [Optional] Apply patch from: https://gist.github.com/laptrinhcomvn/ae127424a9026f507a3c
 
### iTerm2

 - Install latest from https://www.iterm2.com/downloads.html
 


