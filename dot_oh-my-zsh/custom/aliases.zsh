alias zsh-reload="source ~/.zshrc"
alias cz="chezmoi"

# Git
alias gpor="git pull origin --rebase"
alias git-local-branch-cleanup="git branch | grep -v\"master\" | xargs git branch -D"
alias git-reset-all="git submodule foreach --recursive git reset --hard"
alias git-vendor-reset="git submodule init && git submodule sync && git submodule update --init -recursive"

# Utils
tree-find() {
	tree | grep $1
}
