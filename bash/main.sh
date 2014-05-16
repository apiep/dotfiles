_bash=$HOME/Documents/dotfiles/bash
source $_bash/alias.sh
source $_bash/path.sh

for c_path in $(ls $_bash/custom_path)
do
    if [ -x $c_path ]; then
        source $c_path
    fi
done

unset _bash
