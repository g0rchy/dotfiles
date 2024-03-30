alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias www='sudo python3 -m http.server $@'
alias gdb='gdb -q'
alias j='john --wordlist=/usr/share/wordlists/rockyou.txt'
alias nmap='nmap --privileged'
alias htbvpn='sudo openvpn ~/vpn/HTB/competitive_g0rchy.ovpn'
alias htbrvpn='sudo openvpn ~/vpn/HTB/release_arena_g0rchy.ovpn'
alias thmvpn='sudo openvpn ~/vpn/THM/g0rchy.ovpn'

# TODO i might need to look for a "simpler" & reliable one
function urlencode() {
    local string="${1}";local strlen=${#string};local encoded="";local pos c o

    for (( pos=0 ; pos<strlen ; pos++ )); do
        c=${string:$pos:1}
        case "$c" in
           [-_.~a-zA-Z0-9] ) o="${c}" ;;
           * )               printf -v o '%%%02x' "'$c"
        esac
        encoded+="${o}"
    done
    echo "${encoded}"
}

# No python, sed, awk craziness, just pure bashism
function urldecode() { local i="${*//+/ }"; echo -e "${i//%/\\x}"; }
