function fish_user_key_bindings
        # \c* are case-insensitive.
        bind \cS history-search-forward	  # No idea how to use -prefix- and -token- functions..
        bind \cR history-search-backward
        bind \cG forward-word
        bind \cB backward-word
        bind \cQ backward-kill-word
        bind \cW backward-kill-path-component
        bind \t  __tab_or_ls
end
