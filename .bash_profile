export PATH=$PATH:/.pub-cache/bin:/Users/arudenko/.pub-cache/bin:/Users/arudenko/soft/flutter/bin:/usr/local/bin:/Users/arudenko/.fastlane/bin

alias ll='ls -lah'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gb='git branch -a'
alias gch='git checkout'
alias gl='git log --oneline'
alias gconfg='git config --global user.email "ruan65@gmail.com" && git config --global user.name "Andreyka"'
alias gconfl='git config user.email "ruan65@gmail.com" && git config user.name "Andreyka"'
alias python='/usr/local/bin/python3.9'
alias pip='/usr/local/bin/pip3.9'
alias studio="open -a /Applications/Android\ Studio.app"
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

alias brb='flutter pub run build_runner build'
alias brbd='flutter pub run build_runner build --delete-conflicting-outputs'

alias ty='echo "You are welcome"'
# git autocomplete (but get script first: curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
# added by Anaconda3 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/arudenko/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/arudenko/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/arudenko/opt/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/arudenko/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH="$PATH:$HOME/.pub-cache/bin"

# Setting PATH for Python 3.9
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH
