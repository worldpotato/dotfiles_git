function fish_prompt

    set_color -b 022222
    set_color e6a909
    echo -n " "
    echo -n (prompt_pwd)

    set_color -b 033333
    set_color 022222
    echo -n ""

    set_color -b 033333
    echo -n " $fish_mode_prompt"

    set_color -b normal
    set_color 033333
    echo -n ""

    set_color -b normal
    set_color aa0000
    echo -n ' >_ '

    set_color -b normal
    set_color normal
end

