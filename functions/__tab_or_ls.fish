function __tab_or_ls --description 'Tab: 空行(スペースのみ含む)なら ls、それ以外は通常補完'
    if string match --quiet --regex '^ *$' -- (commandline)
        echo
        ls
	echo
        commandline --function repaint
    else
        commandline --function complete
    end
end

