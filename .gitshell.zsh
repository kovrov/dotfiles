autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' max-exports 3
zstyle ':vcs_info:git:*' formats '%r' '%S' '[%b]'
zstyle ':vcs_info:git:*' actionformats '%r' '%S' '[%b|%a]'

function git_prompt() {
  if [[ -n ${vcs_info_msg_0_} ]]; then
    local repo_name="${vcs_info_msg_0_}"
    local sub_path="${vcs_info_msg_1_}"
    local branch_info="${vcs_info_msg_2_}"
    if [[ -n $sub_path && $sub_path != "." ]]; then
      echo "%F{226}$repo_name%f$branch_info%F{3}$sub_path%f "
    else
      echo "%F{226}$repo_name%f$branch_info "
    fi
  else
    echo "%F{226}%1~%f "
  fi
}

PROMPT='$(git_prompt)%# '
