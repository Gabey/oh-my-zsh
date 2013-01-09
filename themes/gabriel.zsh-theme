grey='\e[0;90m'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$grey%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$grey%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$grey%})"

local user='%{$fg[yellow]%}%n@%{$fg[yellow]%}%m%{$reset_color%}'
local pwd='%{$fg[green]%}%~%{$reset_color%}'
#local rvm='%{$fg[red]%}$(rvm-prompt i v g)%{$reset_color%}'
local rvm='%{$fg[red]%}$(rvm_prompt_info)%{$reset_color%}'
local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'
local git_branch='$(git_prompt_status)%{$reset_color%}$(git_prompt_info)%{$reset_color%}'
local sign='%{$fg[blue]%}$%{$reset_color%}'

PROMPT="%{$fg[cyan]%}%*%{$reset_color%} ${user} ${pwd} ${sign} "
RPROMPT="${git_branch} ${rvm}"
