source /usr/share/cachyos-fish-config/cachyos-config.fish
export PATH="/home/yidel/.qlot/bin:$PATH"
export PATH="/home/yidel/Programs/common-lisp/lem:$PATH"
export EDITOR="helix"

export ZELLIJ_AUTO_ATTACH=true
export ZELLIJ_AUTO_EXIT=true


if status is-interactive
    eval (zellij setup --generate-auto-start fish | string collect)
end

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
