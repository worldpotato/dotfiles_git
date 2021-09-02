if status --is-login
    set -gx PATH $PATH ~/.bin
    set -gx PATH $PATH ~/.gem/ruby/2.6.0/bin
    set -gx PATH $PATH ~/.go/bin
    set -gx PATH $PATH ~/.local/bin
    set -gx PATH $PATH ~/.local/src
    set -gx PATH $PATH /usr/local/MATLAB/R2021a/bin
    set -gx MANPATH $MANPATH /usr/local/man
    set -gx EDITOR /usr/bin/nvim
end
