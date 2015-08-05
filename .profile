# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
for file in ~/.{aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file




# if running bash
if [ -n "$BASH_VERSION" ]; then
     # include .bashrc if it exists
     if [ -f "$HOME/.bashrc" ]; then
     . "$HOME/.bashrc"
     fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
     PATH="$HOME/bin:$PATH"
fi
