# Custom settings
amixer set Master on > /dev/null
amixer set Capture nocap > /dev/null

# Added by Toolbox App
export PATH="$PATH:/home/axbg/.local/share/JetBrains/Toolbox/scripts"

. "$HOME/.cargo/env"
. "/home/axbg/.deno/env"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
. "/home/axbg/.deno/env"
