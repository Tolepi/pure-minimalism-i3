# ~/.bashrc - Configuración Industrial Minimalista

# 1. Configuración de terminal y entorno
export EDITOR='nano'
export VISUAL='nano'
export LANG="es_MX.UTF-8"
export TERM="xterm-256color"

# 2. Historial de comandos limpio
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# 3. Prompt con Kaomoji (Estilo Industrial)
# El kaomoji cambia si el comando anterior falló
function _update_prompt() {
    local EXIT_CODE=$?
    # Elige tu kaomoji aquí
    local HAPPY="ヽ(*・ω・)ﾉ working on"
    local SAD=" (ノωヽ) working on"
    
    if [ $EXIT_CODE -ne 0 ]; then
        PS1="\[\033[1;31m\]${SAD}\[\033[0m\] \[\033[1;37m\]\w\[\033[0m\] \$ "
    else
        PS1="\[\033[1;37m\]${HAPPY}\[\033[0m\] \[\033[1;37m\]\w\[\033[0m\] \$ "
    fi
}
PROMPT_COMMAND=_update_prompt

# 4. Alias de productividad
alias v='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cdp='cd ~/projects'

# 5. Ejecución automática de herramientas
# Fastfetch solo si el comando existe para no dar errores
if command -v fastfetch >/dev/null 2>&1; then
    clear
    fastfetch
fi

# 6. Configuración de colores de sistema (Opcional, evita conflictos)
# Esto asegura que los colores básicos siempre funcionen
export LSCOLORS=Gxfxcxdxbxegedabagacad

alias fetch='fastfetch'
