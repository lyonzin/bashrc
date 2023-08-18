export PATH=~/.local/bin:/snap/bin:/usr/sandbox/:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin:$PATH
#------------------------------------- INICIO DOS BANNERS ---------------------------------------

if [[ $(whoami) == 'root' ]]; then
#===============================================
# Banner with "Root" in a different font style #
#===============================================

echo -e "\033[0;31m"
echo "            ██████╗  ██████╗  ██████╗ ████████╗"
echo "            ██╔══██╗██╔═══██╗██╔═══██╗╚══██╔══╝"
echo "            ██████╔╝██║   ██║██║   ██║   ██║"
echo "            ██╔══██╗██║   ██║██║   ██║   ██║"
echo "            ██║  ██║╚██████╔╝╚██████╔╝   ██║"
echo "            ╚═╝  ╚═╝ ╚═════╝  ╚═════╝    ╚═╝"
echo ""
echo " ██╗  ██╗ █████╗ ██████╗ ██████╗ ██╗    ██╗ █████╗ ██╗   ██╗"
echo " ██║  ██║██╔══██╗██╔══██╗██╔══██╗██║    ██║██╔══██╗╚██╗ ██╔╝"
echo " ███████║███████║██████╔╝██║  ██║██║ █╗ ██║███████║ ╚████╔╝"
echo " ██╔══██║██╔══██║██╔══██╗██║  ██║██║███╗██║██╔══██║  ╚██╔╝"
echo " ██║  ██║██║  ██║██║  ██║██████╔╝╚███╔███╔╝██║  ██║   ██║"
echo " ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═╝   ╚═╝"
echo -e "\033[0m"

else

#===============================================
# Banner with "Lyon" in a different font style #
#===============================================

echo -e "\033[1;34m"
echo "            ██╗  ██╗   ██╗ ██████╗ ███╗   ██╗"
echo "            ██║  ╚██╗ ██╔╝██╔═══██╗████╗  ██║"
echo "            ██║   ╚████╔╝ ██║   ██║██╔██╗ ██║"
echo "            ██║    ╚██╔╝  ██║   ██║██║╚██╗██║"
echo "            ███████╗██║   ╚██████╔╝██║ ╚████║██╗"
echo "            ╚══════╝╚═╝    ╚═════╝ ╚═╝  ╚═══╝╚═╝"
echo "                                                   "
echo " ██╗  ██╗ █████╗ ██████╗ ██████╗ ██╗    ██╗ █████╗ ██╗   ██╗"
echo " ██║  ██║██╔══██╗██╔══██╗██╔══██╗██║    ██║██╔══██╗╚██╗ ██╔╝"
echo " ███████║███████║██████╔╝██║  ██║██║ █╗ ██║███████║ ╚████╔╝"
echo " ██╔══██║██╔══██║██╔══██╗██║  ██║██║███╗██║██╔══██║  ╚██╔╝"
echo " ██║  ██║██║  ██║██║  ██║██████╔╝╚███╔███╔╝██║  ██║   ██║"
echo " ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═╝   ╚═╝"
echo -e "\033[0m"

fi
                                                   
#------------------------------------- FIM DOS BANNERS ---------------------------------------

#==============================================================#
# Variáveis com as cores
#==============================================================#

Hacker="Lyon"

#==============================================================#
# Função para formatar o horário
#==============================================================#

#Criando Relogio :) By Lyon.
function format_time {
    echo $(date +"%H:%M:%S %p")
}

#==============================================================#
# Função para obter o endereço IP
#==============================================================#

# Get IP
function get_ip() {
    tunnel_ip=$(ifconfig tun0 2>/dev/null | grep 'netmask' | awk '{print $2}')
    default_ip=$(ifconfig eth0 2>/dev/null | grep 'netmask' | awk '{print $2}')
    
if [[ $tunnel_ip == "10."* ]] || [[ $tunnel_ip == "192.168.100."* ]]; then
    echo $tunnel_ip
else
    echo $default_ip
fi
}

#==============================================================#
# Variáveis para armazenar códigos de cores
# Aqui ficam as cores da fonte e as cores em negrito
# Aqui ficam as cores de fundo
#==============================================================#

## Cores de Fonte
K="\[\033[0;30m\]" # Black (Preto)
R="\[\033[0;31m\]" # Red (Vermelho)
G="\[\033[0;32m\]" # Green (Verde)
Y="\[\033[0;33m\]" # Yellow (Amarelo)
B="\[\033[0;34m\]" # Blue (Azul)
M="\[\033[0;35m\]" # Magenta (Vermelho Claro)
C="\[\033[0;36m\]" # Cyan (Ciano - Azul Claro)
W="\[\033[0;37m\]" # White (Branco)
NONE='\[\033[0m\]' # Reset


# Definindo variáveis de cores
BK="\[\033[1;30m\]" # Bold+Black (Negrito+Preto)
BR="\[\033[1;31m\]" # Bold+Red (Negrito+Vermelho)
BG="\[\033[1;32m\]" # Bold+Green (Negrito+Verde)
BY="\[\033[1;33m\]" # Bold+Yellow (Negrito+Amarelo)
BB="\[\033[1;34m\]" # Bold+Blue (Negrito+Azul)
BM="\[\033[1;35m\]" # Bold+Magenta (Negrito+Vermelho Claro)
BC="\[\033[1;36m\]" # Bold+Cyan (Negrito+Ciano - Azul Claro)
BW="\[\033[1;37m\]" # Bold+White (Negrito+Branco)

## Cores de fundo (backgroud)
BGK="\[\033[40m\]" # Black (Preto)
BGR="\[\033[41m\]" # Red (Vermelho)
BGG="\[\033[42m\]" # Green (Verde)
BGY="\[\033[43m\]" # Yellow (Amarelo)
BGB="\[\033[44m\]" # Blue (Azul)
BGM="\[\033[45m\]" # Magenta (Vermelho Claro)
BGC="\[\033[46m\]" # Cyan (Ciano - Azul Claro)
BGW="\[\033[47m\]" # White (Branco)

#================================================================#
# Configurações gerais, incluindo tamanho e formato do histórico #
#================================================================#

# Se não estiver executando interativamente, não faça nada
case $- in
    *i*) ;;
      *) return;;
esac

# Verifique o tamanho da janela após cada comando e atualize LINES e COLUMNS, se necessário
shopt -s checkwinsize

# Defina a variável de identificação do chroot para o prompt
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Configure o prompt
force_color_prompt=yes
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=
    fi
fi

# Configure as cores e símbolos do prompt
if [ "$color_prompt" = yes ]; then
    VIRTUAL_ENV_DISABLE_PROMPT=1
    prompt_color='\[\033[;32m\]'
    info_color='\[\033[1;34m\]'
    prompt_symbol=㉿
    if [ "$EUID" -eq 0 ]; then
        prompt_color='\[\033[;94m\]'
        info_color='\[\033[1;31m\]'
    fi
    
#==============================================================#
# Personalização do prompt de comandos com base no usuário
#==============================================================#

    # Escolha o estilo do prompt com base na variável PROMPT_ALTERNATIVE
    case "$PROMPT_ALTERNATIVE" in
        twoline)
            PS1=$prompt_color'┌──${debian_chroot:+($debian_chroot)──}${VIRTUAL_ENV:+(\[\033[0;1m\]$(basename $VIRTUAL_ENV)'$prompt_color')}('$info_color'\u'$prompt_symbol'\h'$prompt_color')-[\[\033[0;1m\]\w'$prompt_color']\n'$prompt_color'└─'$info_color'\$\[\033[0m\] ';;
        oneline)
            PS1='${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV)) }${debian_chroot:+($debian_chroot)}'$info_color'\u@\h\[\033[00m\]:'$prompt_color'\[\033[01m\]\w\[\033[00m\]\$ ';;
        backtrack)
            PS1='${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV)) }${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ ';;
    esac

    unset prompt_color
    unset info_color
    unset prompt_symbol
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

unset color_prompt force_color_prompt

# Defina o título da janela para xterm
case "$TERM" in
xterm*|rxvt*|Eterm|aterm|kterm|gnome*|alacritty)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

[ "$NEWLINE_BEFORE_PROMPT" = yes ] && PROMPT_COMMAND="PROMPT_COMMAND=echo"

# enable color support of ls, less and man, and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    export LS_COLORS="$LS_COLORS:ow=30;44:" # fix ls color for folders with 777 permissions
    
#==============================================================#
# Funções e aliases de automação e atalhos
#==============================================================#

    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias diff='diff --color=auto'
    alias ip='ip --color=auto'

    export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
    export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
    export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
    export LESS_TERMCAP_so=$'\E[01;33m'    # begin reverse video
    export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
    export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
    export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#-----------------------------------------------
# Configurações Gerais
#-----------------------------------------------

# Se não estiver rodando interativamente, não fazer nada
[ -z "$PS1" ] && return

# Não armazenar as linhas duplicadas ou linhas que começam com espaço no historico
HISTCONTROL=ignoreboth

# Adicionar ao Historico e não substitui-lo
shopt -s histappend

# Definições do comprimento e tamnho do historico.
HISTSIZE=1000
HISTFILESIZE=2000

#=============================================
# Personalizando o Prompt de Comandos
#=============================================

## Verifica se é usuário root (EUID=0) ou usuário comum
if [ $EUID -eq 0 ]; then

      ## Cores e efeitos do Usuario root
	PS1="$BR╔══[$BW$USER$BR@$BW$HOSTNAME$BR]-[$BW\$(date +%H:%M:%S)$BR]-[$BW\`get_ip\`$BR]-[$BY\w$BR]$BW\n$BR╚══▶ \\$ $NONE"

else

      ## Cores e efeitos do usuário comum
	PS1="$BB╔══[$BW$Hacker$BB@$BW$HOSTNAME$BB]-[$BW\$(date +%H:%M:%S)$BB]-[$BW\`get_ip\`$BB]-[$BY\w$BB]$BW\n$BB╚══▶ \\$ $NONE"


fi # Fim da condição if


#==============================
#    Automações e Atalhos     #
#==============================

## Habilitando suporte a cores para o ls e outros aliases
## Vê se o arquivo existe
if [ -x /usr/bin/dircolors ]; then
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

## Aliases (apelidos) para comandos
alias ls='ls --color=auto'
alias dir='dir --color=auto'
# install  colordiff package :)
alias diff='colordiff'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
fi # Fim do if do dircolor

#==============================================================#
#                 extrair arquivos compactados                 #
#==============================================================#

#-------------------- comando para extrair arquivos compactados de vários formatos --------------------

function extrair() {
    if [ -z "$1" ]; then
        echo "Usage: extrair <filename>"
        return 1
    fi
    case "$1" in
        *.tar.bz2) tar xjf "$1" ;;
        *.tar.gz) tar xzf "$1" ;;
        *.bz2) bunzip2 "$1" ;;
        *.rar) unrar x "$1" ;;
        *.gz) gunzip "$1" ;;
        *.tar) tar xf "$1" ;;
        *.tbz2) tar xjf "$1" ;;
        *.tgz) tar xzf "$1" ;;
        *.zip) unzip "$1" ;;
        *.Z) uncompress "$1" ;;
        *.7z) 7z x "$1" ;;
        *) echo "Unknown file type" ;;
    esac
}

#==============================================================#
# Função para traduzir texto usando o Google Translate
#==============================================================#

function translate() {
    local src_lang="$1"
    local dest_lang="$2"
    local text="$(echo "${*:3}" | sed 's/ /+/g')"
    xdg-open "https://translate.google.com/?sl=$src_lang&tl=$dest_lang&text=$text" >/dev/null 2>&1
}

#==============================================================#
# Melhorar a autocompletar do comando cd                       #
#==============================================================#

shopt -s cdspell

#==============================================================#
#      comando para criar um novo diretório e entrar nele      #
#==============================================================#

function mkcd() {
    if [ -n "$1" ]; then
        mkdir -p "$1" && cd "$1"
    else
        echo "Por favor, forneça um nome de diretório."
    fi
}

#=============================================================================#
#        exibir informações detalhadas sobre arquivos executáveis PE          #
#=============================================================================#

peinfo() {
    local file="$1"

    if [ -z "$file" ]; then
        echo "Usage: peinfo <file>"
        return 1
    fi

    python -c "import pefile; pe = pefile.PE('$file'); print(pe.dump_info())"
}


#==============================================================#
# Função para instalar pacotes
#==============================================================#

function instalar() {
    if [ -z "$1" ]; then
        echo "Usage: install_package <package-name-or-file>"
        return 1
    fi

    # Detect the package manager and file type
    if [ -x "$(command -v apt)" ]; then
        if [[ "$1" == *.deb ]]; then
            sudo dpkg -i "$1"
            sudo apt-get install -f
        else
            sudo apt update && sudo apt install -y "$1"
        fi
    elif [ -x "$(command -v dnf)" ]; then
        if [[ "$1" == *.rpm ]]; then
            sudo dnf install "$1"
        else
            sudo dnf install "$1"
        fi
    elif [ -x "$(command -v yum)" ]; then
        if [[ "$1" == *.rpm ]]; then
            sudo yum localinstall "$1"
        else
            sudo yum install "$1"
        fi
    elif [ -x "$(command -v pacman)" ]; then
        sudo pacman -Sy "$1"
    else
        echo "Package manager not detected. You must manually install: $1"
    fi
}

#=============================================================================#
#         enviar um arquivo para o VirusTotal e criar um relatório            #
#=============================================================================#

vtreport() {
    local file="$1"

    if [ -z "$file" ]; then
        echo "Usage: vtreport <file>"
        return 1
    fi

    local api_key="YOUR_API_KEY"
    local response="$(curl -s --request POST 'https://www.virustotal.com/api/v3/files' --header "x-apikey: $api_key" -F "file=@$file")"
    local report_url="$(echo "$response" | jq -r '.data.links.self')"

    echo "Relatório do VirusTotal: $report_url"
}

#==============================================================#
# Função para encontrar uma string em arquivos no diretório
#==============================================================#

find_string() {
    local search_string="$1"
    local directory="${2:-.}"

    if [ -z "$search_string" ]; then
        echo "Usage: find_string <search_string> [directory]"
        return 1
    fi

    grep -rnw "$directory" -e "$search_string"
}

#==============================================================#
# Funções para codificar e decodificar base64
#==============================================================#

decode_base64() {
    local base64_string="$1"

    if [ -z "$base64_string" ]; then
        echo "Usage: decode_base64 <base64_string>"
        return 1
    fi

    echo "$base64_string" | base64 --decode
}

encode_base64() {
    local input_string="$1"

    if [ -z "$input_string" ]; then
        echo "Usage: encode_base64 <input_string>"
        return 1
    fi

    echo "$input_string" | base64
}

#==============================================================#
#          encontrar IP dentro de arquivos de texto            #
#==============================================================#

extrair_ip() {
    local file="$1"

    if [ -z "$file" ]; then
        echo "Usage: extract_ip <file>"
        return 1
    fi

    grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" "$file"
}

#==============================================================#
#         Função para verificar o status de um serviço         #
#==============================================================#

service_status() {
    local GREEN="\033[1;32m"
    local YELLOW="\033[1;33m"
    local RED="\033[1;31m"
    local NONE="\033[0m"

    if [ "$#" -ne 1 ]; then
        echo -e "${RED}Uso: service_status <nome_do_serviço>${NONE}"
        return 1
    fi

    if systemctl --all --quiet is-enabled $1; then
        if systemctl is-active --quiet $1; then
            echo -e "${GREEN}O serviço $1 está em execução${NONE}"
        else
            echo -e "${YELLOW}O serviço $1 está inativo${NONE}"
        fi
    else
        echo -e "${RED}O serviço $1 não existe${NONE}"
    fi
}

#==============================================================#
#       abre um túnel SSH para acessar uma porta remota        #
#==============================================================#

sshtunnel() {
    if [ "$#" -ne 4 ]; then
        echo "Sintaxe: sshtunnel <usuário>@<host> <porta local> <host remoto> <porta remota>"
        return 1
    fi

    ssh -L "$2":"$3":"$4" "$1" -N
}

#=================================#
#       Gerador de QRCODE         #
#=================================#

function qr() {
    curl -s http://api.qrserver.com/v1/create-qr-code/?data=$1 | display -
}

#=================================#
#       Consulta de MACADRESS     #
#=================================#

function maclookup() {
    curl -s https://api.macvendors.com/$1
}

#==============================================================#
#          encontrar IP dentro de arquivos de texto            #
#==============================================================#

auto_startup() {
    local service="$1"
    if [ -z "$service" ]; then
        echo "Uso: auto_startup <service>"
        return 1
    fi

    if [ $EUID -ne 0 ]; then
        echo "Esta função requer privilégios de root. Por favor, execute como root ou use sudo."
        return 1
    fi

    systemctl enable "$service"
    systemctl start "$service"
    echo "O serviço $service foi habilitado e iniciado."
}

#==========================================================================#
#  Verifica o hash do arquivo para encontrar o algoritmo correspondente    #
#==========================================================================#

check_hash() {
    local hash="$1"
    if [ -z "$hash" ]; then
        echo "Uso: check_hash <hash>"
        return 1
    fi
    hashid "$hash"
}

#==============================================================#
#        encontrar rapidamente arquivos por nome               #
#==============================================================#

function ffind() {
    if [ -z "$1" ]; then
        echo "Usage: ffind <filename>"
        return 1
    fi
    find . -type f -iname "*$1*"
}

#==============================================================#
#     visualizar rapidamente um arquivo JSON formatado         #
#==============================================================#

function jsonview() {
    if [ -z "$1" ]; then
        echo "Usage: jsonview <file>"
        return 1
    fi
    cat "$1" | jq '.' | less
}

#==============================================================#
#                 Descobrir meu ip Publico                     #
#==============================================================#

alias myip='curl ifconfig.me'

#==============================================================#
#              Função para encontrar arquivos                  #
#==============================================================#

function findfile() {
    if [ -z "$1" ]; then
        echo "Usage: findfile <filename>"
        return 1
    fi
    find . -type f -iname "*$1*"
}

#==============================================================#
#                 Aliases (apelidos) diversos                  #
#==============================================================#

# Editar sources.list
alias SOURCE='sudo nano /etc/apt/sources.list'

# Editar sources.list
alias source='sudo nano /etc/apt/sources.list'

# Editar sources.list
alias Source='sudo nano /etc/apt/sources.list'

#====================================================================

# atualizar o apt-get
alias UPDATE='sudo apt-get update'

# atualizar o apt-get
alias update='sudo apt-get update'

# atualizar o apt-get╚═
alias Update='sudo apt-get update'

#====================================================================

# atualizar o apt-get
alias updatefull='sudo apt-get update --yes && sudo apt-get upgrade --yes && sudo apt-get dist-upgrade --yes && sudo apt full-upgrade --yes && sudo apt-get autoremove --yes && sudo apt-get clean --yes && sudo apt autoremove --yes'

# atualizar o apt-get
alias UPDATEFULL='sudo apt-get update --yes && sudo apt-get upgrade --yes && sudo apt-get dist-upgrade --yes && sudo apt full-upgrade --yes && sudo apt-get autoremove --yes && sudo apt-get clean --yes && sudo apt autoremove --yes'

# atualizar o apt-get
alias Updatefull='sudo apt-get update --yes && sudo apt-get upgrade --yes && sudo apt-get dist-upgrade --yes && sudo apt full-upgrade --yes && sudo apt-get autoremove --yes && sudo apt-get clean --yes && sudo apt autoremove --yes'

#====================================================================

# atualizar o apt-get
alias Upgrade='sudo apt-get upgrade'

# atualizar o apt-get
alias upgrade='sudo apt-get upgrade'

# atualizar o apt-get
alias UPGRADE='sudo apt-get upgrade'

#Mostrar portas Abertas
alias ports='netstat -tulanp'

#Descompactando Arquivo Tar.gz
alias untar='tar -zxvf '

#Descompactando Arquivo zip
alias unzip='unzip -q'

#Descompactando arquivo gz
alias ungz='gzip -d '

# Subir Servidor Web Python
alias www='python3 -m http.server 4455'

#====================================================================

# Reparar o apt-get
alias aptrepair='sudo apt-get -f install'

# Reparar o apt-get
alias borapescar='service ssh status'

# Reparar o dpkg
alias dpkgrepair='sudo dpkg --configure -a'

# Editar sources.list
alias SUDO='sudo'
alias Sudo='sudo'
#===================================================================

#Resolv.conf

alias Resolv='sudo nano /etc/resolv.conf'
alias RESOLV='sudo nano /etc/resolv.conf'
alias resolv='sudo nano /etc/resolv.conf'

#===================================================================

#Subir Nessus

alias boranessus='sudo systemctl start nessusd.service'
alias BORANESSUS='sudo systemctl start nessusd.service'
alias Boranessus='sudo systemctl start nessusd.service'

#===================================================================
#nano com numeros de linhas
alias nano='nano -c -l'

#===================================================================
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
 if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

PATH="/home/kali/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/kali/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/kali/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/kali/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/kali/perl5"; export PERL_MM_OPT;
