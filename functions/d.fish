function d --description 'Print dirstack one per line with indices'
    set -l stack (pwd) $dirstack
        for i in (seq (count $stack))
        printf "%d: %s\n" (math $i-1) $stack[$i]
    end
end

