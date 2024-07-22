export DOCKER_SCAN_SUGGEST="false"

alias dc="docker compose"
alias dr="docker compose run --rm"
alias dlog="docker compose logs --tail=10 -f"

complete -F _docker_compose dc
