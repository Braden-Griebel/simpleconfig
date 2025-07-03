if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
set -gx MAMBA_EXE /home/bgriebel/miniforge3/bin/mamba
set -gx MAMBA_ROOT_PREFIX /home/bgriebel/miniforge3
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/bgriebel/miniforge3/bin/conda
    eval /home/bgriebel/miniforge3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/bgriebel/miniforge3/etc/fish/conf.d/conda.fish"
        . "/home/bgriebel/miniforge3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /home/bgriebel/miniforge3/bin $PATH
    end
end
# <<< conda initialize <<<

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/bgriebel/.opam/opam-init/init.fish' && source '/home/bgriebel/.opam/opam-init/init.fish' >/dev/null 2>/dev/null; or true
# END opam configuration

# Yazi setup
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# Pixi completions
pixi completion --shell fish | source

# Abbreviations
abbr --add xs 'xbps-query -Rs'
abbr --add xr xbps-remove
abbr --add cv csvlens
abbr --add zb 'zig build'
abbr --add zt 'zig build test'
abbr --add vv 'source ./.venv/bin/activate.fish'
abbr --add em 'emacs -nw'

# Zoxide Setup (Kepp at end)
zoxide init --cmd cd fish | source
