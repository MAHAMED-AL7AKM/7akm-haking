#!/bin/bash

# أداة MOHAMED-AL7AKM - القائمة الرئيسية
# المطور: @DAD_MOHAMED - تليجرام
# GitHub: https://github.com/MOHAMED-AL7AKM

# الألوان
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

# عرض البانر
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
    echo -e "${YELLOW}          أداة MOHAMED-AL7AKM       ${NC}"
    echo -e "${YELLOW}        تطوير: @DAD_MOHAMED        ${NC}"
    echo -e "${YELLOW}════════════════════════════════════${NC}"
    echo ""
}

# التحقق من الملفات
check_files() {
    if [ ! -f "whatsapp_simulator.sh" ]; then
        echo -e "${RED}❌ ملف whatsapp_simulator.sh غير موجود!${NC}"
        return 1
    fi
    
    if [ ! -x "whatsapp_simulator.sh" ]; then
        echo -e "${YELLOW}⚠️  جاري إعطاء صلاحيات التنفيذ...${NC}"
        chmod +x whatsapp_simulator.sh
    fi
    
    return 0
}

# تشغيل الأداة
run_tool() {
    echo -e "${BLUE}🚀 تشغيل الأداة...${NC}"
    if check_files; then
        ./whatsapp_simulator.sh
    else
        echo -e "${RED}❌ لا يمكن تشغيل الأداة!${NC}"
        read -p "اضغط Enter للمتابعة..."
    fi
}

# معلومات المطور
show_developer_info() {
    echo -e "${BLUE}📱 معلومات المطور:${NC}"
    echo -e "${GREEN}• الاسم: MOHAMED-AL7AKM${NC}"
    echo -e "${GREEN}• تليجرام: @DAD_MOHAMED${NC}"
    echo -e "${GREEN}• GitHub: MOHAMED-AL7AKM${NC}"
    echo -e "${GREEN}• الأداة: أداة متخصصة${NC}"
    echo ""
    read -p "اضغط Enter للمتابعة..."
}

# تحديث الأداة
update_tool() {
    echo -e "${BLUE}🔄 جاري التحقق من التحديثات...${NC}"
    
    if [ -d ".git" ]; then
        git pull
        echo -e "${GREEN}✅ تم تحديث الأداة بنجاح!${NC}"
    else
        echo -e "${YELLOW}⚠️  لا يمكن التحديث - ليس مستودع git${NC}"
    fi
    
    read -p "اضغط Enter للمتابعة..."
}

# إعدادات الصلاحيات
fix_permissions() {
    echo -e "${BLUE}🔧 جاري إصلاح الصلاحيات...${NC}"
    chmod +x *.sh
    echo -e "${GREEN}✅ تم إعطاء صلاحيات التنفيذ لجميع ملفات sh${NC}"
    ls -la *.sh
    read -p "اضغط Enter للمتابعة..."
}

# التحذير القانوني
show_warning() {
    echo -e "${RED}"
    echo "╔════════════════════════════════════╗"
    echo "║           ⚠️  تحذير قانوني        ║"
    echo "║════════════════════════════════════║"
    echo "║ هذه الأداة للأغراض التعليمية فقط  ║"
    echo "║ الاستخدام غير القانوني محظور     ║"
    echo "║ والمطور غير مسؤول عن أي سوء استخدام║"
    echo "╚════════════════════════════════════╝"
    echo -e "${NC}"
    echo -e "${YELLOW}✅ استخدم المعرفة لحماية الحسابات${NC}"
    echo -e "${YELLOW}❌ لا تستخدم لمهاجمة الحسابات${NC}"
    echo ""
    read -p "اضغط Enter للمواصلة..."
}

# القائمة الرئيسية
main_menu() {
    while true; do
        display_banner
        
        echo -e "${GREEN}┌──────────────────────────────┐${NC}"
        echo -e "${GREEN}│       القائمة الرئيسية       │${NC}"
        echo -e "${GREEN}└──────────────────────────────┘${NC}"
        echo ""
        echo -e "${CYAN}[1] 🚀 تشغيل الأداة${NC}"
        echo -e "${CYAN}[2] 📱 معلومات المطور${NC}"
        echo -e "${CYAN}[3] 🔧 إصلاح الصلاحيات${NC}"
        echo -e "${CYAN}[4] 🔄 تحديث الأداة${NC}"
        echo -e "${CYAN}[5] ⚠️  التحذير القانوني${NC}"
        echo -e "${RED}[6] 🚪 خروج${NC}"
        echo ""
        
        read -p "اختر خيارًا [1-6]: " choice
        
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
                echo -e "${GREEN}شكرًا لاستخدامك الأداة! 🎉${NC}"
                echo -e "${YELLOW}تابعنا على GitHub: MOHAMED-AL7AKM${NC}"
                echo -e "${YELLOW}تواصل على تليجرام: @DAD_MOHAMED${NC}"
                echo ""
                exit 0
                ;;
            *)
                echo -e "${RED}❌ خيار غير صحيح! الرجاء اختيار [1-6]${NC}"
                sleep 2
                ;;
        esac
    done
}

# بدء البرنامج
echo -e "${GREEN}جاري تحميل أداة MOHAMED-AL7AKM...${NC}"
sleep 2
main_menu