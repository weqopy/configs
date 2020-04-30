local ret_status="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})"
# PROMPT='%{$fg[cyan]%}%~%{$reset_color%} %{$terminfo[bold]$fg[red]%}➙ '
PROMPT='%{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info) %{$terminfo[bold]$fg[red]%}$ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}| ("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=")%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=")%{$fg[green]%} ✓"
