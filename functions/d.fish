function d --description 'Print dirstack one per line with indices'
    set --local stack (pwd) $dirstack
    set --local seen
    set --local uniq
    for dir in $stack
        if not contains -- $dir $seen
            set --append seen $dir
            set --append uniq $dir
        end
    end
    for i in (seq (count $uniq))
        printf "%d: %s\n" (math $i-1) $uniq[$i]
    end
end

