function fish_title
    if git rev-parse --is-inside-work-tree >/dev/null 2>&1
        echo (basename (git rev-parse --show-toplevel))
    else
        echo (prompt_pwd)
    end
end

