function fish_user_key_bindings
        # \c* are case-insensitive.
        bind \cS history-search-forward	  # No idea how to use -prefix- and -token- functions..
        bind \cR history-search-backward
        bind \cG forward-word
        bind \cB backward-word
        bind \cW backward-kill-word
end
