# as seen https://medium.com/@HazuliFidastian/run-tmux-automatically-on-fish-shell-2b62622661c7
if not set -q TMUX
    set -g TMUX tmux new-session -d -s main
    eval $TMUX
    tmux attach-session -d -t main
end
