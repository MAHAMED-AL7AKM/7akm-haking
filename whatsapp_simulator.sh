#!/bin/bash

# WhatsApp Verification Simulator - Educational Purpose Only
# Created for cybersecurity awareness and education
# GitHub: https://github.com/yourusername/whatsapp-verification-simulator

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Display banner
display_banner() {
    clear
    echo -e "${CYAN}"
    cat assets/banner.txt
    echo -e "${NC}"
    echo ""
    echo -e "${YELLOW}========================================${NC}"
    echo -e "${YELLOW}    EDUCATIONAL SIMULATION TOOL${NC}"
    echo -e "${YELLOW}    FOR SECURITY AWARENESS ONLY${NC}"
    echo -e "${YELLOW}========================================${NC}"
    echo ""
    echo -e "${RED}⚠️  WARNING: FOR EDUCATIONAL PURPOSES ONLY! ⚠️${NC}"
    echo -e "${RED}Unauthorized access to accounts is ILLEGAL!${NC}"
    echo ""
}

# Function to display educational information
show_educational_info() {
    echo -e "${BLUE}"
    echo "=== EDUCATIONAL INFORMATION ==="
    echo -e "${NC}"
    echo -e "${GREEN}• WhatsApp uses 6-digit verification codes${NC}"
    echo -e "${GREEN}• There are 1,000,000 possible combinations${NC}"
    echo -e "${GREEN}• Real WhatsApp blocks after 5 failed attempts${NC}"
    echo -e "${GREEN}• This simulation shows why brute force doesn't work${NC}"
    echo -e "${GREEN}• Always enable two-step verification!${NC}"
    echo ""
    
    read -p "Press Enter to continue..."
}

# Function to simulate code generation (educational only)
simulate_code_generation() {
    echo ""
    echo -e "${BLUE}=== THEORETICAL SIMULATION ===${NC}"
    echo -e "${YELLOW}This is NOT a real attack - just educational demo${NC}"
    echo ""
    
    read -p "Enter how many codes to generate (max 10): " num_codes
    
    if ! [[ "$num_codes" =~ ^[0-9]+$ ]] || [ "$num_codes" -gt 10 ] || [ "$num_codes" -lt 1 ]; then
        echo -e "${RED}Invalid input! Please enter 1-10${NC}"
        return
    fi
    
    echo ""
    echo -e "${YELLOW}Generating $num_codes random codes (EDUCATIONAL ONLY):${NC}"
    echo -e "${CYAN}----------------------------------------${NC}"
    
    for ((i=1; i<=num_codes; i++)); do
        code=$((RANDOM % 1000000))
        printf "${GREEN}Code %02d: %06d${NC}\n" $i $code
        sleep 0.5
    done
    
    echo -e "${CYAN}----------------------------------------${NC}"
    echo -e "${RED}SIMULATION COMPLETE - THESE ARE RANDOM${NC}"
    echo -e "${RED}Real WhatsApp would block after 5 attempts!${NC}"
    echo ""
    
    read -p "Press Enter to continue..."
}

# Function to calculate theoretical time
calculate_theoretical_time() {
    echo ""
    echo -e "${BLUE}=== THEORETICAL TIME CALCULATION ===${NC}"
    echo -e "${YELLOW}Assuming 1 attempt per second:${NC}"
    echo ""
    
    total_codes=1000000
    attempts_per_second=1
    total_seconds=$((total_codes / attempts_per_second))
    
    days=$((total_seconds / 86400))
    hours=$(( (total_seconds % 86400) / 3600 ))
    minutes=$(( (total_seconds % 3600) / 60 ))
    seconds=$((total_seconds % 60))
    
    echo -e "${GREEN}• Total possible codes: 1,000,000${NC}"
    echo -e "${GREEN}• Time needed: $days days, $hours hours, $minutes minutes${NC}"
    echo ""
    echo -e "${RED}REALITY: WhatsApp blocks after 5 failed attempts!${NC}"
    echo -e "${RED}This makes brute force IMPOSSIBLE in practice.${NC}"
    echo ""
    
    read -p "Press Enter to continue..."
}

# Function to show security tips
show_security_tips() {
    echo ""
    echo -e "${BLUE}=== SECURITY TIPS ===${NC}"
    echo -e "${GREEN}✓ Enable two-step verification${NC}"
    echo -e "${GREEN}✓ Never share verification codes${NC}"
    echo -e "${GREEN}✓ Use a strong phone PIN${NC}"
    echo -e "${GREEN}✓ Be wary of phishing attempts${NC}"
    echo -e "${GREEN}✓ Keep WhatsApp updated${NC}"
    echo -e "${GREEN}✓ Use official WhatsApp only${NC}"
    echo -e "${GREEN}✓ Log out from shared computers${NC}"
    echo -e "${GREEN}✓ Regularly check active sessions${NC}"
    echo ""
    
    read -p "Press Enter to continue..."
}

# Function to show legal warning
show_legal_warning() {
    echo ""
    echo -e "${RED}========================================${NC}"
    echo -e "${RED}            LEGAL WARNING${NC}"
    echo -e "${RED}========================================${NC}"
    echo ""
    echo -e "${YELLOW}This tool is for EDUCATIONAL purposes only.${NC}"
    echo -e "${YELLOW}Using it for unauthorized access is:${NC}"
    echo ""
    echo -e "${RED}• ILLEGAL in most countries${NC}"
    echo -e "${RED}• Against WhatsApp Terms of Service${NC}"
    echo -e "${RED}• Unethical and harmful${NC}"
    echo ""
    echo -e "${GREEN}Use this knowledge to PROTECT accounts, not attack them.${NC}"
    echo ""
    
    read -p "Press Enter to acknowledge and continue..."
}

# Main menu
main_menu() {
    while true; do
        display_banner
        
        echo -e "${BLUE}=== MAIN MENU ===${NC}"
        echo -e "${GREEN}1. Show Educational Information${NC}"
        echo -e "${GREEN}2. Run Theoretical Simulation${NC}"
        echo -e "${GREEN}3. Calculate Theoretical Attack Time${NC}"
        echo -e "${GREEN}4. Show Security Tips${NC}"
        echo -e "${GREEN}5. Legal Warning${NC}"
        echo -e "${RED}6. Exit${NC}"
        echo ""
        
        read -p "Choose option (1-6): " choice
        
        case $choice in
            1)
                show_educational_info
                ;;
            2)
                simulate_code_generation
                ;;
            3)
                calculate_theoretical_time
                ;;
            4)
                show_security_tips
                ;;
            5)
                show_legal_warning
                ;;
            6)
                echo ""
                echo -e "${GREEN}Thank you for learning about cybersecurity!${NC}"
                echo -e "${YELLOW}Remember: This tool is for EDUCATIONAL purposes only!${NC}"
                echo -e "${GREEN}Stay safe and legal!${NC}"
                echo ""
                exit 0
                ;;
            *)
                echo -e "${RED}Invalid option! Please choose 1-6${NC}"
                sleep 2
                ;;
        esac
    done
}

# Check if running in Termux
check_environment() {
    if [ -d "/data/data/com.termux/files/usr" ]; then
        echo -e "${GREEN}Termux environment detected.${NC}"
    else
        echo -e "${YELLOW}Linux environment detected.${NC}"
    fi
}

# Initialization
initialize() {
    display_banner
    check_environment
    echo -e "${YELLOW}Initializing educational tool...${NC}"
    sleep 2
    show_legal_warning
}

# Start the application
initialize
main_menu