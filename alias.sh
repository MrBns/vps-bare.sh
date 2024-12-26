alias python=python3
alias py=python3

# exa alias for ll
alias ls="eza --color=always --icons --group-directories-first --git"
alias l="eza --color=always --icons --all --group-directories-first --git"
alias ll="eza --oneline --long --color=always --icons --all --group-directories-first --git"





# for systemctl;
# alias systemctl='sudo systemctl'
alias sctl="sudo systemctl"

# adding sudo by default
alias ufw='sudo ufw'


#Bun (js runtime);
br(){
  bun run "$@"
}

#Deno (js Runtime)
dt(){
  deno task "$@"
}


# clipboard by xclip;
copy() {
  echo $n | xclip -sel clip
}

copyfile() {
  cat $n | xclip -sel clip
}

jp() {
  PREV_DIR=$(pwd)
  j $1
  pwd
}

jip() {
  PREV_DIR=$(pwd)
  ji $1
  pwd
}

jcode() {
  PREV_DIR=$(pwd)

  ji "$1"

  if [ $? -ne 0 ]; then
    echo "Stopped by User"
    return 130
  fi

  wait
  code $(pwd)

  wait
  cd $PREV_DIR
}



jnvim() {
  PREV_DIR=$(pwd)

  ji "$1"

  if [ $? -ne 0 ]; then
    echo "Stopped by User"
    return 130
  fi

  wait
  nvim $(pwd)
}

# Alias for git
gac() {
  git add $1
  git commit -m "$2"
}



killPort() {
  sudo kill -9 $(sudo lsof -t -i:$1)
}
