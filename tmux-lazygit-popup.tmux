#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

[ -z "$TMUX_LAZYGIT_POPUP_KEY" ] && TMUX_LAZYGIT_POPUP_KEY="g"
tmux bind-key "$TMUX_LAZYGIT_POPUP_KEY" run-shell -b "$CURRENT_DIR/bin/tmux-lazygit-popup.sh"
