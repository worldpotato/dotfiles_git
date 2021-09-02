function fish_mode_prompt
  switch $fish_bind_mode
    case default
        set_color -b blue
        set_color 022222
        echo -n "  "

        set_color -b 022222
        set_color blue
        echo -n ""
    case insert
        set_color -b 033333
        set_color blue
        echo -n "  "

        set_color -b 022222
        set_color 033333
        echo -n ""
    case replace_one
        set_color -b red
        set_color black
        echo -n "  "

        set_color -b 022222
        set_color red
        echo -n ""
    case replace
        set_color -b brred
        set_color black
        echo -n "  "

        set_color -b 022222
        set_color brred
        echo -n ""
    case visual
        set_color -b green
        set_color black
        echo -n "  "

        set_color -b 022222
        set_color green
        echo -n ""
    case '*'
      set_color -b 033333
      set_color --bold magenta
      echo ' ?'
  end
  set_color normal
end

