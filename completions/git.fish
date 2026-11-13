# Lightweight Git completion for Fish

# Common Git subcommands
complete --command git --no-files \
    --condition '__fish_use_subcommand' \
    --arguments 'add branch checkout clone commit diff fetch log merge pull push rebase restore show status switch'

# Branch names for switch and checkout
complete --command git --no-files \
    --condition '__fish_seen_subcommand_from switch checkout' \
    --arguments '(command git branch --format="%(refname:short)")'

# Remote names for fetch, pull and push
complete --command git \
    --condition '__fish_seen_subcommand_from fetch pull push' \
    --arguments '(command git remote)'

