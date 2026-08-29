function stack_complete
    set -l token (commandline --current-token)

    # =N/... でなければ通常の Fish completion
    if not string match -q -r '^=[0-9]+/' -- $token
        commandline -f complete
        return
    end

    # =N/ の N を取得
    set -l index (string match -r '^=([0-9]+)/' -- $token)[2]

    # =N/ より後ろの部分
    set -l suffix (string replace -r '^=[0-9]+/' '' -- $token)

    # dirs はスペース区切りで1行なので split する
    set -l stack (string split ' ' -- (dirs))

    # =0 → stack[1]
    # =1 → stack[2]
    # =2 → stack[3]
    set -l stack_pos (math $index + 1)

    if test $stack_pos -gt (count $stack)
        return
    end

    set -l base $stack[$stack_pos]

    # 補完対象となる実際のパス
    set -l path "$base/$suffix"

    # 一旦実パスに置き換える
    commandline --current-token --replace "$path"

    # Fish の通常のファイル名 completion
    commandline -f complete
end
