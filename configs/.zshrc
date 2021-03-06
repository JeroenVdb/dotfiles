# Brew: To activate antigen, add the following to your ~/.zshrc:
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle common-aliases
antigen bundle command-not-found
antigen bundle z

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

# Load default shell dotfiles
source ~/.bash_profile

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# For using alt+KeyLeft and alt+KeyRight in the embedded Terminal in IntelliJ
# https://youtrack.jetbrains.com/issue/IDEA-153536
bindkey "\e\eOD" backward-word
bindkey "\e\eOC" forward-word

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/jvandenberghe/Projects/temptation-module/module/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/jvandenberghe/Projects/temptation-module/module/node_modules/tabtab/.completions/slss.zsh