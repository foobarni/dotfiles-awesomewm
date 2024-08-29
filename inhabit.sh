# Locating and linking `git-completion.bash` and `git-prompt.sh` to $HOME
if command -v git &> /dev/null; then
    git_completion=$(find /usr/share -path "*/completion/git-completion.bash" 2>/dev/null | head -n 1)
    git_prompt=$(find /usr/share -path "*/completion/git-prompt.sh" 2>/dev/null | head -n 1)
    
    if [ -n "$git_completion" ]; then
            ln -sf "$git_completion" "$HOME/.git-completion.bash"
            echo "Linked $git_completion to $HOME/.git-completion.bash"
        else
            echo "git-completion.bash not found."
    fi

    if [ -n "$git_prompt" ]; then
        ln -sf "$git_prompt" "$HOME/.git-prompt.sh"
        echo "Linked $git_prompt to $HOME/.git-prompt.sh"
    else
        echo "git-prompt.sh not found."
    fi
else
    echo "Git is not installed."
fi

# Copying configurations to their places
CONFIG_SRC="config"
HOME_SRC="home"
BIN_SRC="bin"

CONFIG_DEST="$HOME/.config"
HOME_DEST="$HOME"
BIN_DEST="$HOME/.local/bin"

copy_files() {
    local src="$1"
    local dest="$2"
    
    echo "Copying files from $src to $dest"
    rsync -av --update "$src/" "$dest/"
}

mkdir -p "$CONFIG_DEST" "$BIN_DEST"

copy_files "$CONFIG_SRC" "$CONFIG_DEST"
copy_files "$HOME_SRC" "$HOME_DEST"
copy_files "$BIN_SRC" "$BIN_DEST"

echo "Dotfiles sync complete!"
echo "Remember to add $BIN_DEST to your PATH if you haven't already:"
echo "export PATH=\"$BIN_DEST:\$PATH\""
