#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

[ -z "$TMUX_LAZYGIT_POPUP_KEY" ] && TMUX_LAZYGIT_POPUP_KEY="G"
tmux bind-key "$TMUX_LAZYGIT_POPUP_KEY" run-shell -b \
    "$CURRENT_DIR/scripts/tmux-lazygit-popup.sh $TMUX_LAZYGIT_POPUP_WIDTH $TMUX_LAZYGIT_POPUP_HEIGHT $TMUX_LAZYGIT_POPUP_BORDER"
