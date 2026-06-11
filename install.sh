#!/usr/bin/env bash

set -euo pipefail

# =========================
# ADITYA SHREE CLOUD SYSTEMS
# =========================

R='\033[1;38;5;196m'
G='\033[1;38;5;82m'
Y='\033[1;38;5;220m'
C='\033[1;38;5;51m'
P='\033[1;38;5;201m'
VIOLET='\033[1;38;5;135m'
NEON='\033[1;38;5;198m'
W='\033[1;38;5;255m'
DG='\033[0;38;5;244m'
NC='\033[0m'

HOST="run.nobitahost.in"
URL="https://${HOST}"
NETRC="${HOME}/.netrc"
IP="65.0.86.121"
LOCL_IP="10.1.0.29"

render_header() {
    clear
                                                                          
    echo -e "${P}"
    cat << "EOF"
 █████╗ ██████╗ ██╗████████╗██╗   ██╗ █████╗                            
██╔══██╗██╔══██╗██║╚══██╔══╝╚██╗ ██╔╝██╔══██╗                     
███████║██║  ██║██║   ██║    ╚████╔╝ ███████║
██╔══██║██║  ██║██║   ██║     ╚██╔╝  ██╔══██║
██║  ██║██████╔╝██║   ██║      ██║   ██║  ██║
╚═╝  ╚═╝╚═════╝ ╚═╝   ╚═╝      ╚═╝   ╚═╝  ╚═╝

 ███████╗██╗  ██╗██████╗ ███████╗███████╗
 ██╔════╝██║  ██║██╔══██╗██╔════╝██╔════╝
 ███████╗███████║██████╔╝█████╗  █████╗
 ╚════██║██╔══██║██╔══██╗██╔══╝  ██╔══╝
 ███████║██║  ██║██║  ██║███████╗███████╗
 ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝
EOF
    echo -e "${NC}"

    echo -e "${VIOLET}╔══════════════════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${VIOLET}║${NC}                     ${NEON}ADITYA SHREE CLOUD SYSTEMS${NC}                      ${VIOLET}║${NC}"
    echo -e "${VIOLET}║${NC}                     ${Y}Founder: Aditya Shree${NC}                            ${VIOLET}║${NC}"
    echo -e "${VIOLET}║${NC}                     ${DG}Sasta Developer${NC}                                  ${VIOLET}║${NC}"
    echo -e "${VIOLET}║${NC}                     ${G}Elite Infrastructure Online${NC}                      ${VIOLET}║${NC}"
    echo -e "${VIOLET}╚══════════════════════════════════════════════════════════════════════════════╝${NC}"

    echo -e "\n${Y}                     ★ SYSTEM INITIALIZATION ★${NC}\n"
}

render_header

echo -e " ${C}◉ NETWORK INFORMATION${NC}"
echo -e " ${DG}├─ Public Endpoint     :${NC} ${W}$IP${NC}"
echo -e " ${DG}├─ Local Gateway       :${NC} ${W}$LOCL_IP${NC}"
echo -e " ${DG}├─ Target Host         :${NC} ${W}$HOST${NC}"
echo -e " ${DG}├─ Security Layer      :${NC} ${G}ACTIVE${NC}"
echo -e " ${DG}└─ Status              :${NC} ${NEON}ONLINE${NC}"

echo -e "${DG}──────────────────────────────────────────────────────────────────────────────${NC}"

echo -e "\n ${Y}[1/2] AUTHENTICATION${NC}"
echo -ne " ${DG}├─ Loading Credentials...${NC} "

touch "$NETRC"
chmod 600 "$NETRC"

sed -i "/$HOST/d" "$NETRC" 2>/dev/null || true

printf "machine %s login %s password %s\n" "$HOST" "$IP" "$LOCL_IP" >> "$NETRC"

sleep 1

echo -e "${G}SUCCESS${NC} ✓"

echo -e "\n ${Y}[2/2] CONNECTION${NC}"
echo -ne " ${DG}├─ Establishing Secure Link...${NC} "

payload="$(mktemp)"
trap "rm -f $payload" EXIT

if curl -fsSL --netrc -o "$payload" "$URL"; then

    echo -e "${G}CONNECTED${NC} ✓"
    echo -e " ${DG}└─ Access Level:${NC} ${G}AUTHORIZED${NC}"

    echo -e "\n${DG}──────────────────────────────────────────────────────────────────────────────${NC}"
    echo -e "${P}               EXECUTING PAYLOAD IN 1 SECOND${NC}"
    echo -e "${DG}──────────────────────────────────────────────────────────────────────────────${NC}"

clear

echo "============================================================"
echo "                ADITYA SHREE CLOUD SYSTEM"
echo "============================================================"
echo ""
echo "[1] Panel Install"
echo "[2] Wings Install"
echo "[3] Themes Install"
echo "[4] OS Reinstall (Ubuntu/Debian)"
echo "[5] KVM Install (Any VPS)"
echo ""
read -rp "Select option [1-5]: " opt


# ========================
# PANEL
# ========================
if [ "$opt" == "1" ]; then
    echo "Installing Panel..."
    bash <(curl -fsSL https://example.com/panel.sh)
fi


# ========================
# WINGS
# ========================
if [ "$opt" == "2" ]; then
    echo "Installing Wings..."
    bash <(curl -fsSL https://example.com/wings.sh)
fi


# ========================
# THEMES
# ========================
if [ "$opt" == "3" ]; then
    echo "Installing Themes..."
    bash <(curl -fsSL https://example.com/themes.sh)
fi


# ========================
# OS REINSTALL MENU
# ========================
if [ "$opt" == "4" ]; then
    clear
    echo "================ OS REINSTALL MENU ================"
    echo ""
    echo "[1] Ubuntu 20.04"
    echo "[2] Ubuntu 22.04"
    echo "[3] Ubuntu 24.04"
    echo "[4] Debian 11"
    echo "[5] Debian 12"
    echo "[6] Debian 13"
    echo ""
    read -rp "Select OS: " os

    echo ""
    echo "NOTE: OS reinstall depends on VPS provider API."
    echo "This script only shows selection."

    case "$os" in
        1) echo "Selected Ubuntu 20.04" ;;
        2) echo "Selected Ubuntu 22.04" ;;
        3) echo "Selected Ubuntu 24.04" ;;
        4) echo "Selected Debian 11" ;;
        5) echo "Selected Debian 12" ;;
        6) echo "Selected Debian 13" ;;
        *) echo "Invalid option" ;;
    esac

    echo ""
    echo "Connect this with your VPS panel API (like SolusVM / Proxmox / Custom API)"
fi


# ========================
# KVM INSTALL
# ========================
if [ "$opt" == "5" ]; then
    echo "Installing KVM..."

    apt update -y
    apt install -y qemu-kvm qemu-system-x86 libvirt-daemon libvirt-clients bridge-utils virtinst cpu-checker

    systemctl enable --now libvirtd

    echo ""
    echo "Checking virtualization support..."
    kvm-ok || echo "KVM may not be supported on this VPS"

    echo ""
    echo "KVM Installation Complete"
fi
