export ZSH="$HOME/.oh-my-zsh"

# Aliases
alias ls="lsd"
alias ll="lsd -al"
alias la="lsd -al"
alias grep='grep --color=auto'
alias ec="$EDITOR $HOME/.zshrc" # edit .zshrc
alias sc="source $HOME/.zshrc"  # reload zsh configuration

# Set up the prompt - if you load Theme with zplugin as in this example, this will be overriden by the Theme. If you comment out the Theme in zplugins, this will be loaded.
autoload -Uz promptinit
promptinit
prompt adam1            # see Zsh Prompt Theme below

# Use vi keybindings even if our EDITOR is set to vi
bindkey -e

setopt histignorealldups sharehistory

# Keep 5000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

neofetch

completions=(
  git
  composer
  ssh
  npm
  nvm
  awscli
  makefile
)

plugins=(
  git
  dotenv
  npm
  nvm
  aws
  gpg-agent
  keychain
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

zstyle :omz:plugins:keychain agents gpg,ssh
zstyle :omz:plugins:keychain options --quiet
zstyle :omz:plugins:keychain identities id_ed25519

# pnpm
export PNPM_HOME="/home/dfcook/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
