# Terminal


# Git
source ~/scripts/gitscripts/bash_git_completion.sh
export GITAWAREPROMPT=~/scripts/gitscripts/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="[]/\W \[$txtwht\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Path
export PATH=$PATH:/Applications/CMake.app/Contents/bin/
export PATH=${PATH}:~/Library/Android/sdk/tools/
export PATH=${PATH}:~/Library/Android/sdk/platform-tools/

export CLICOLOR=1
export LSCOLORS=HxBxhxDxfxhxhxhxhxcxcx

# Android
export ANDROID_NDK=~/Library/Android/sdk/ndk-bundle
export NDK_HOME="$ANDROID_NDK"
export ANDROID_HOME=~/Library/Android/sdk/
export PATH=$PATH:$ANDROID_NDK
alias ndkbuild=~/Library/Android/ndk/android-ndk-r10d/ndk-build
alias androidstudio="open -a /Applications/Android\ Studio.app"
alias androidpackages="adb shell 'pm list packages -f' | sed -e 's/.*=//' | sort"
androidinstalllaunch() {
    adb install $1
    adb shell monkey -p $2 -c android.intent.category.LAUNCHER 1
}

# Go
export GOPATH=$HOME/Documents/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# Tmux History
# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups
# append history entries..
shopt -s histappend
# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
