function __tab_or_ls --description 'Tab: 空行なら ls、=N/ なら directory stack completion、それ以外は通常補完'
    set -l line (commandline)
    set -l token (commandline --current-token)

    # 空行（スペースのみ）なら ls
    if string match --quiet --regex '^ *$' -- $line
        echo
        ls
        echo
        commandline --function repaint
        return
    end

    # =N/ で始まる token なら directory stack completion
    if string match --quiet --regex '^=[0-9]+/' -- $token
        stack_complete
        return
    end

    # それ以外は通常の Fish completion
    commandline --function complete
end
