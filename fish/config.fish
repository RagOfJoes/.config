# Commands to run in interactive sessions can go here
if status is-interactive
  # Zellij
  # if not set -q ZELLIJ
  #   if test "$ZELLIJ_AUTO_ATTACH" = "true"
  #     zellij attach -c
  #   else
  #     zellij
  #   end
  #
  #   if test "$ZELLIJ_AUTO_EXIT" = "true"
  #     kill $fish_pid
  #   end
  # end
  
  # Starship
  if type -q starship
    starship init fish | source
    enable_transience
  end

  neofetch
end

# pnpm
set -gx PNPM_HOME "/Users/raggy/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

