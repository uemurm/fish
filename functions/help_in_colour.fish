function help_in_colour --description 'Print help message of commands that do not have options such as --color=always'
    $argv --help 2>&1 | highlight --out-format=ansi --syntax=$HOME/.config/highlight/helptext.lang - | less -R
end
