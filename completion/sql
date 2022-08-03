#
# Auto completion script for "sql" command.
#
_sql_autocomplete() {
    local databases=$(sql --list-dbs)
    local cur="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=( $(compgen -W "--list-dbs ${databases}" -- ${cur}) )
}

if type sql &>/dev/null; then
  complete -o nospace -F _sql_autocomplete sql
fi

unset -v _sql_autocomplete
