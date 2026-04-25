set -U fish_greeting
set -g fish_color_valid_path
fish_vi_key_bindings

if status is-interactive
    starship init fish | source
end

set -gx EDITOR nvim
set -gx VISUAL nvim
