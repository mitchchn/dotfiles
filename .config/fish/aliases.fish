# dotfiles (see https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
alias dotfiles="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# vscode
type -q code-insiders; and alias code="code-insiders"