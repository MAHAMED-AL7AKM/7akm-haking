#!/bin/bash

# MOHAMED-AL7AKM Tool - Main Menu
# Developer: @DAD_MOHAMED - Telegram
# GitHub: https://github.com/MOHAMED-AL7AKM

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

# Display banner
display_banner() {
    clear
    echo -e "${CYAN}"
    echo "_________  _____   ____  __.  _____   "
    echo "\______  \/  _  \ |    |/ _| /     \  "
    echo "    /    /  /_\  \|      <  /  \ /  \ "
    echo "   /    /    |    \    |  \/    Y    \ "
    echo "  /____/\____|__  /____|__ \____|__  / "
    echo "                \/        \/       \/  "
    echo -e "${NC}"
    echo -e "${YELLOW}════════════════════════════════════${NC}"
    echo -e "${YELLOW}        MOHAMED-AL7AKM Tool         ${NC}"
    echo -e "${YELLOW}      Developer: @DAD_MOHAMED       ${NC}"
    echo -e "${YELLOW}════════════════════════════════════${NC}"
    echo ""
}

# Check files
check_files() {
    if [ ! -f "whatsapp_simulator.sh" ]; then
        echo -e "${RED}❌ whatsapp_simulator.sh file not found!${NC}"
        return 1
    fi
    
    if [ ! -x "whatsapp_simulator.sh" ]; then
        echo -e "${YELLOW}⚠️  Setting execution permissions...${NC}"
        chmod +x whatsapp_simulator.sh
    fi
    
    return 0
}

# Run tool
run_tool() {
    echo -e "${BLUE}🚀 Starting Tool...${NC}"
    if check_files; then
        ./whatsapp_simulator.sh
    else
        echo -e "${RED}❌ Cannot start tool!${NC}"
        read -p "Press Enter to continue..."
    fi
}

# Developer information
show_developer_info() {
    echo -e "${BLUE}📱 Developer Information:${NC}"
    echo -e "${GREEN}• Name: MOHAMED-AL7AKM${NC}"
    echo -e "${GREEN}• Telegram: @DAD_MOHAMED${NC}"
    echo -e "${GREEN}• GitHub: MOHAMED-AL7AKM${NC}"
    echo -e "${GREEN}• Tool: Specialized Tool${NC}"
    echo ""
    read -p "Press Enter to continue..."
}

# Update tool
update_tool() {
    echo -e "${BLUE}🔄 Checking for updates...${NC}"
    
    if [ -d ".git" ]; then
        git pull
        echo -e "${GREEN}✅ Tool updated successfully!${NC}"
    else
        echo -e "${YELLOW}⚠️  Cannot update - not a git repository${NC}"
    fi
    
    read -p "Press Enter to continue..."
}

# Fix permissions
fix_permissions() {
    echo -e "${BLUE}🔧 Fixing permissions...${NC}"
    chmod +x *.sh
    echo -e "${GREEN}✅ Execution permissions granted to all sh files${NC}"
    ls -la *.sh
    read -p "Press Enter to continue..."
}

# Legal warning
show_warning() {
    echo -e "${RED}"
    echo "╔════════════════════════════════════╗"
    echo "║           ⚠️  LEGAL WARNING        ║"
    echo "║════════════════════════════════════║"
    echo "║ This tool is for EDUCATIONAL       ║"
    echo "║ purposes only. Unauthorized access ║"
    echo "║ is ILLEGAL! Developer not          ║"
    echo "║ responsible for any misuse.        ║"
    echo "╚════════════════════════════════════╝"
    echo -e "${NC}"
    echo -e "${YELLOW}✅ Use knowledge to protect accounts${NC}"
    echo -e "${YELLOW}❌ Don't use to attack accounts${NC}"
    echo ""
    read -p "Press Enter to continue..."
}

# Main menu
main_menu() {
    while true; do
        display_banner
        
        echo -e "${GREEN}┌──────────────────────────────┐${NC}"
        echo -e "${GREEN}│         MAIN MENU            │${NC}"
        echo -e "${GREEN}└──────────────────────────────┘${NC}"
        echo ""
        echo -e "${CYAN}[1] 🚀 Start Tool${NC}"
        echo -e "${CYAN}[2] 📱 Developer Info${NC}"
        echo -e "${CYAN}[3] 🔧 Fix Permissions${NC}"
        echo -e "${CYAN}[4] 🔄 Update Tool${NC}"
        echo -e "${CYAN}[5] ⚠️  Legal Warning${NC}"
        echo -e "${RED}[6] 🚪 Exit${NC}"
        echo ""
        
        read -p "Choose option [1-6]: " choice
        
        case $choice in
            1)
                run_tool
                ;;
            2)
                show_developer_info
                ;;
            3)
                fix_permissions
                ;;
            4)
                update_tool
                ;;
            5)
                show_warning
                ;;
            6)
                echo ""
                echo -e "${GREEN}Thanks for using the tool! 🎉${NC}"
                echo -e "${YELLOW}Follow on GitHub: MOHAMED-AL7AKM${NC}"
                echo -e "${YELLOW}Contact on Telegram: @DAD_MOHAMED${NC}"
                echo ""
                exit 0
                ;;
            *)
                echo -e "${RED}❌ Invalid option! Please choose [1-6]${NC}"
                sleep 2
                ;;
        esac
    done
}

# Start program
echo -e "${GREEN}Loading MOHAMED-AL7AKM Tool...${NC}"
sleep 2
main_menu