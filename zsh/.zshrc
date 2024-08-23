# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="${HOME}/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
  docker
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# for ESP32 development in Rust
export PATH="~/.espressif/tools/xtensa-esp32-elf-clang/esp-14.0.0-20220415-aarch64-apple-darwin/bin/:~/.espressif/tools/xtensa-esp32-elf-gcc/8_4_0-esp-2021r2-patch3-aarch64-apple-darwin/bin/:$PATH"
export LIBCLANG_PATH="~/.espressif/tools/xtensa-esp32-elf-clang/esp-14.0.0-20220415-aarch64-apple-darwin/lib/"
export PIP_USER="no"

source "$HOME/.rye/env"

# 1password
eval "$(op completion zsh)"; compdef _op op

# cargo
export PATH=~/opt/bin:~/.cargo/bin:$PATH
alias ls=~/.cargo/bin/eza
alias du=~/.cargo/bin/dust
