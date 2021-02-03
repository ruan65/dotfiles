export PS1='$ '
export PS1='$ '
export PS1='\W $ '
export EDITOR=nano
export VISUAL='$EDITOR'
export PATH=$PATH:~/Library/Android/sdk/platform-tools:~/soft/flutter/bin/cache/dart-sdk/bin:~/soft/flutter/bin:/usr/local/opt/openssl/bin:
export PATH="$PATH":"$HOME/soft/flutter/.pub-cache/bin"
export ANDROID_HOME=$HOME/Library/Android/sdk/
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH":"$HOME/.pub-cache/bin
export TBT="#$$###"

alias hs='history'
alias ll='ls -lah'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gb='git branch'
alias gl='git log --oneline'
alias gch='git checkout'
alias gconfg='git config --global user.email "ruan65@gmail.com" && git config --global user.name "Andreyka"'
alias gconfl='git config user.email "ruan65@gmail.com" && git config user.name "Andreyka"'
alias ty='echo "You are welcome, dear Andreyka!"'
alias charm="open -a /Applications/PyCharm*.app"
alias studio="open -a /Applications/Android\ Studio.app"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PATH="$PATH:/Applications/Android\ Studio.app/Contents/jre/jdk/Contents/Home/bin/keytool"
export PATH="$PATH:/Applications/Android\ Studio.app/Contents/jre/jdk/Contents/Home/bin/"

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

source '/Users/a/.my_commands.sh'
# added by Anaconda3 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/a/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/a/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/a/opt/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/a/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
