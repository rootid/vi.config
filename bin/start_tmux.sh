#!/bin/sh

install_tmux() {
    sudo apt-get install tmux
}

session_name=basic

create_session() {
  tmux new -s ${session_name}
}

