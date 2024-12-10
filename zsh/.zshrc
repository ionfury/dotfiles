# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="powerlevel10k/powerlevel10k"
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
export GPG_TTY=$(tty)
#export PATH=$HOME/Library/Python/3.9/bin:$HOME/bin:/usr/local/bin:$PATH

plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
  git
  kubectl
)

source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit
compinit

#source /opt/homebrew/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#export PATH="/opt/homebrew/opt/binutils/bin:$PATH"