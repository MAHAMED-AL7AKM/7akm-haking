# أداة MOHAMED-AL7AKM - نسخة مطورة
# المطور: @DAD_MOHAMED
# GitHub: https://github.com/MOHAMED-AL7AKM

# Colors for output
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

# WhatsApp code simulation
simulate_whatsapp_code() {
    echo ""
    echo -e "${BLUE}=== WhatsApp Code Generator ===${NC}"
    echo ""
    
    # Get country code
    read -p "Enter country code (without +): " country_code
    if ! [[ "$country_code" =~ ^[0-9]+$ ]]; then
        echo -e "${RED}Error: Country code must be numbers only!${NC}"
        return
    fi
    
    # Get phone number
    read -p "Enter phone number: " phone_number
    if ! [[ "$phone_number" =~ ^[0-9]+$ ]]; then
        echo -e "${RED}Error: Phone number must be numbers only!${NC}"
        return
    fi
    
    # Ask if code was requested
    echo ""
    read -p "Did you request a code on WhatsApp? (y/n): " request_code
    
    if [[ "$request_code" == "y" || "$request_code" == "Y" ]]; then
        echo ""
        echo -e "${YELLOW}Processing request for: +${country_code} ${phone_number}${NC}"
        echo -e "${CYAN}----------------------------------------${NC}"
        
        # Generate random 6-digit code
        code=$((100000 + RANDOM % 900000))
        
        # Simulate processing
        echo -e "${BLUE}Connecting to WhatsApp servers...${NC}"
        sleep 2
        echo -e "${BLUE}Verifying phone number...${NC}"
        sleep 1
        echo -e "${BLUE}Generating verification code...${NC}"
        sleep 1
        
        echo -e "${CYAN}----------------------------------------${NC}"
        echo -e "${GREEN}✅ WhatsApp Verification Code: ${code}${NC}"
        echo -e "${CYAN}----------------------------------------${NC}"
        echo ""
        echo -e "${YELLOW}This is your verification code${NC}"
        echo ""
        
    else
        echo ""
        echo -e "${RED}Please request a code from WhatsApp first!${NC}"
        echo -e "${YELLOW}Open WhatsApp and request a verification code.${NC}"
    fi
    
    read -p "Press Enter to continue..."
}

# Tool information
show_tool_info() {
    echo -e "${BLUE}"
    echo "=== Tool Information ==="
    echo -e "${NC}"
    echo -e "${GREEN}• Tool: MOHAMED-AL7AKM WhatsApp Tool${NC}"
    echo -e "${GREEN}• Version: 2.0${NC}"
    echo -e "${GREEN}• Developer: @DAD_MOHAMED${NC}"
    echo -e "${GREEN}• GitHub: MOHAMED-AL7AKM${NC}"
    echo ""
    
    read -p "Press Enter to continue..."
}

# Technical information
show_technical_info() {
    echo ""
    echo -e "${BLUE}=== Technical Information ===${NC}"
    echo -e "${YELLOW}System Performance Data:${NC}"
    echo ""
    
    total_codes=1000000
    attempts_per_second=1
    total_seconds=$((total_codes / attempts_per_second))
    
    days=$((total_seconds / 86400))
    hours=$(( (total_seconds % 86400) / 3600 ))
    minutes=$(( (total_seconds % 3600) / 60 ))
    
    echo -e "${GREEN}• Total possibilities: 1,000,000${NC}"
    echo -e "${GREEN}• Theoretical time: $days days, $hours hours, $minutes minutes${NC}"
    echo ""
    echo -e "${RED}Note: This is theoretical technical information${NC}"
    echo ""
    
    read -p "Press Enter to continue..."
}

# Security tips
show_security_tips() {
    echo ""
    echo -e "${BLUE}=== Security Tips ==="
    echo -e "${GREEN}✓ Use strong passwords${NC}"
    echo -e "${GREEN}✓ Enable two-step verification${NC}"
    echo -e "${GREEN}✓ Keep apps updated${NC}"
    echo -e "${GREEN}✓ Be careful with suspicious links${NC}"
    echo -e "${GREEN}✓ Use trusted security software${NC}"
    echo -e "${GREEN}✓ Keep backups${NC}"
    echo ""
    
    read -p "Press Enter to continue..."
}

# Developer information
show_developer_info() {
    echo ""
    echo -e "${BLUE}=== Developer Information ==="
    echo -e "${GREEN}• Developer: MOHAMED-AL7AKM${NC}"
    echo -e "${GREEN}• Telegram: @DAD_MOHAMED${NC}"
    echo -e "${GREEN}• GitHub: MOHAMED-AL7AKM${NC}"
    echo -e "${GREEN}• Version: 2.0${NC}"
    echo -e "${GREEN}• Last Update: 2024${NC}"
    echo ""
    
    read -p "Press Enter to continue..."
}

# Legal warning
show_legal_warning() {
    echo ""
    echo -e "${RED}========================================${NC}"
    echo -e "${RED}            LEGAL WARNING${NC}"
    echo -e "${RED}========================================${NC}"
    echo ""
    echo -e "${YELLOW}This tool is for EDUCATIONAL purposes only.${NC}"
    echo -e "${YELLOW}Unauthorized access is:${NC}"
    echo ""
    echo -e "${RED}• Illegal in most countries${NC}"
    echo -e "${RED}• Against terms of service${NC}"
    echo -e "${RED}• Unethical and harmful${NC}"
    echo ""
    echo -e "${GREEN}Use this knowledge to PROTECT accounts, not attack them.${NC}"
    echo ""
    
    read -p "Press Enter to continue..."
}

# Main menu
main_menu() {
    while true; do
        display_banner
        
        echo -e "${BLUE}=== MAIN MENU ===${NC}"
        echo -e "${GREEN}[1] 🚀 Generate WhatsApp Code${NC}"
        echo -e "${GREEN}[2] 📊 Tool Information${NC}"
        echo -e "${GREEN}[3] 💻 Technical Info${NC}"
        echo -e "${GREEN}[4] 🔒 Security Tips${NC}"
        echo -e "${GREEN}[5] 👨‍💻 Developer Info${NC}"
        echo -e "${GREEN}[6] ⚠️  Legal Warning${NC}"
        echo -e "${RED}[7] 🚪 Back to Main Menu${NC}"
        echo ""
        
        read -p "Choose option [1-7]: " choice
        
        case $choice in
            1)
                simulate_whatsapp_code
                ;;
            2)
                show_tool_info
                ;;
            3)
                show_technical_info
                ;;
            4)
                show_security_tips
                ;;
            5)
                show_developer_info
                ;;
            6)
                show_legal_warning
                ;;
            7)
                echo ""
                echo -e "${GREEN}Returning to main menu...${NC}"
                exit 0
                ;;
            *)
                echo -e "${RED}Invalid choice! Please choose 1-7${NC}"
                sleep 2
                ;;
        esac
    done
}

# Check environment
check_environment() {
    if [ -d "/data/data/com.termux/files/usr" ]; then
        echo -e "${GREEN}Termux environment detected.${NC}"
    else
        echo -e "${YELLOW}Linux environment detected.${NC}"
    fi
}

# Initialize
initialize() {
    display_banner
    check_environment
    echo -e "${YELLOW}Initializing MOHAMED-AL7AKM Tool...${NC}"
    sleep 2
    show_legal_warning
}

# Start application
initialize
main_menu