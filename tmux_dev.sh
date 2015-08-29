#After installing tmux 1.8 dev environment invoke the script

DIR="~/code/"
tmux new-session -s dev -n ide -d
tmux send-keys -t dev 'cd $DIR' C-m
tmux send-keys -t dev 'vim .' C-m
tmux new-window -n shell
tmux select-window -t dev:1
#tmux attach -t dev

