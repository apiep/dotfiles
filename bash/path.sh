
current_dir=$HOME/Documents/dotfiles/bash

# Add cwd to $PATH
PATH=$PATH:.
if [ -d $current_dir/custom_path ]; then
    for f in $current_dir/custom_path/*.sh; do
        if [ -x $f ]; then
            . $f
        fi
    done
    unset f
fi
unset current_dir

# Add virtualenv
#source `which virtualenvwrapper.sh`
# Add ~/bin to path
export PATH=$PATH:$HOME/bin
source ~/.rvm/scripts/rvm
