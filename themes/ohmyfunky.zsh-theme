# Taken from Tassilo's Blog
# http://tsdh.wordpress.com/2007/12/06/my-funky-zsh-prompt/

local blue_op="%{$fg[blue]%}[%{$reset_color%}"
local blue_cp="%{$fg[blue]%}]%{$reset_color%}"
local uptime_nm="$(uptime -p | awk -F',' '{print $2}' | tr -d ' ' | tr -d 'hours')"
local path_p="${blue_op}%~${blue_cp}"
local connector="%F{blue}-%f"
local index="%F{blue}👉   %f"
local pointer=" %#%F{blue}>%f "
# local user_host="${blue_op}%n@%m${blue_cp}"
# local ret_status="${blue_op}%?${blue_cp}"
# local hist_no="${blue_op}%h${blue_cp}"
local smiley="%(?,%{$fg[gray]%}♣️%{$reset_color%},%{$fg[red]%}✖️%{$reset_color%})"
RPROMPT='[%F{yellow}%?%f]'
PROMPT="${index}${blue_op}${smiley}${blue_cp}${connector}${path_p}${pointer}"
local cur_cmd="${blue_op}%_${blue_cp}"
PROMPT2="${cur_cmd}> "
