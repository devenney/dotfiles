alias zshrc="${=EDITOR} ~/.zshrc"

alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

alias tag="ctags -R -f ./.git/tags ."
alias scope="cscope -R -b"

alias awsar='function(){eval $(command assume-role $@);}'
