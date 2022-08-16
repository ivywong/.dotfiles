alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls --color=auto'

alias gs='git status'
alias ga='git add'
alias gcm='git commit -m'
alias gl='git log'
alias gll='git log --oneline'
alias gp='git push'

alias vvim='/usr/bin/vim'
alias vim='nvim'

alias toolbox='~/programs/toolbox/toolbox'

alias vfa='vim "$(find . | fzf)"' # includes hidden files
alias vf='vim "$(fzf)"'

# cd to directory using fzf
cf () {
  _dir=$(find "${1:-.}" -type d 2> /dev/null | fzf +m) && cd "$_dir" || exit
}

fif() {
  ag --nobreak --nonumbers --noheading . | fzf
}

# this downloads the best possible quality from youtube and transcodes to m4a
# technically transcoding to m4a might loose a little quality,
# so I also pass -k which keeps the original file it downloaded around too
youtube-m4a() {
	youtube-dl -f bestaudio --audio-quality 0 --extract-audio -k --audio-format m4a "$@"
}
