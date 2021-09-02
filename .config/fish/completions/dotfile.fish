# All subcommands that timedatectl knows - this is useful for later.
set -l commands status commit add remove log pull rebase rm

complete -c dotfile -n "not __fish_seen_subcommand_from $commands" \
    -f -a "$commands"
complete -c dotfile -n "__fish_seen_subcommand_from $commands" \
    -F

# complete -c dotfile -kf -a "status commit add"
