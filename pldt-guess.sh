#!/bin/sh

# Text Processors
err(){
	printf "\033[38;5;1m%b\033[0m\n" "${1}" >&2
}

die(){
	err "${1}"
	exit 1
}

inf(){
	printf "\033[38;5;3m%b\033[0m\n" "${1}"
}

suc(){
	printf "\033[38;5;2m%b\033[0m\n" "${1}"
}

# Show banner here
banner() {
	clear
	while IFS= read -r line; do
		printf "\033[38;5;155m%b\033[0m\n" "${line}"
	done <<-EOF
	       :::::::::  :::        ::::::::: :::::::::::     
	      :+:    :+: :+:        :+:    :+:    :+:          
	     +:+    +:+ +:+        +:+    +:+    +:+           
	    +#++:++#+  +#+        +#+    +:+    +#+            
	   +#+        +#+        +#+    +#+    +#+             
	  #+#        #+#        #+#    #+#    #+#  CODED BY:   
	 ###        ########## #########     ###  JAYSON C. SAN BUENAVENTURA    
	                    ::::::::  :::    ::: :::::::::: ::::::::   :::::::: 
	                  :+:    :+: :+:    :+: :+:       :+:    :+: :+:    :+: 
	                 +:+        +:+    +:+ +:+       +:+        +:+         
	                :#:        +#+    +:+ +#++:++#  +#++:++#++ +#++:++#++   
	               +#+   +#+# +#+    +#+ +#+              +#+        +#+    
	              #+#    #+# #+#    #+# #+#       #+#    #+# #+#    #+#     
	             ########   ########  ########## ########   ########        	
	EOF
}                                                    

# Main menu of this tool
main_menu() {
	banner
	while IFS= read -r line; do
		printf "%b\n" "${line}"
	done <<-EOF
	
	 [01] PLDTHOMEDSL, PLDTmyDSLPAL, PLDmyDSLBiz (mac address)
	 [02] PLDTHOMEDSL (last 5 digit number)
	 [03] PLDTHOMEFIBR_xxxxx (w/ underscore)
	 [04] PLDTHOMEFIBRxxxx (w/o underscore)
	 [05] HomeBro_Ultera
	 [00] Exit
	
	EOF
	printf '%s\n' " ┌─[pldt@guess]─[~]"
	printf '%s' " └──╼ $ "
	read -r choose
	case "${choose}" in
		01|1)
			pldthomedsl_pldymydslpal_pldtmydslbiz
			;;
		02|2)
			pldt_home_dsl_num
			;;
		03|3)
			pldt_home_fibr_xxxxxx
			;;
		04|4)
			pldt_home_fibrxxxxxx
			;;
		05|5)
			home_bro_ultera
			;;
		0)
			clear
			exit 0
			;;
		*)
			err "You entered an invalid number, Please pick at the selection."
			sleep 1
			;;
	esac
}

# Function to guess PLDTHOMEDSL, PLDTmyDSLPAL, PLDTmyDSLBiz default password using mac address
pldthomedsl_pldymydslpal_pldtmydslbiz() {
	banner
	printf '\n %s' "Enter the last 5 digit of mac address: "
	read -r mac
	printf '%b' "\n"
	printf ' %s\n' "The defalt pass is: PLDTWIFI${mac}"
	printf '%b' "\n"
	printf ' %s' "Do you want to continue (Y/n)?: "
	read -r con
	case "${con}" in
		y|Y)
			return
			;;
		*)
			clear
			exit 0
			;;
	esac
}

# Function to guess PLDTHOMEDSL default password isng last 5 digit number
pldt_home_dsl_num() {
	banner
	printf '\n %s' "Enter the last 5 digit of mac address: "
	read -r mac
	m=${mac} a="$(( m * 3 ))"
	printf '%b' "\n"
	printf ' %s\n' "The defalt pass is: PLDTWIFI${a}"
	printf '%b' "\n"
	printf ' %s' "Do you want to continue (Y/n)?: "
	read -r con
	case "${con}" in
		y|Y)
			return
			;;
		*)
			clear
			exit 0
			;;
	esac
}

# Function to guess PLDTHOMEFIBR_xxxxx default password
pldt_home_fibr_xxxxxx() {
	banner
	printf '\n %s' "Enter the last 5 digit of mac address: "
	read -r mac
	pass="$(printf '%s' "${mac}" | tr 0123456789abcdef fedcba9876543210)"
	printf '%b' "\n"
	printf ' %s\n' "The defalt pass is: wlan${pass}"
	printf '%b' "\n"
	printf ' %s' "Do you want to continue (Y/n)?: "
	read -r con
	case "${con}" in
		y|Y)
			return
			;;
		*)
			clear
			exit 0
			;;
	esac
}

# Function to guess PLDTHOMEFIBRxxxxx default password
pldt_home_fibrxxxxxx() {
	banner
	printf '\n %s' "Enter the last 5 digit of mac address: "
	read -r mac
	pass="$(printf '%s' "$mac" | tr 0123456789abcdef fedcba9876543210)"
	printf '%b' "\n"
	printf ' %s\n' "The defalt pass is: PLDTWIFI${pass}"
	printf '%b' "\n"
	printf ' %s' "Do you want to continue (Y/n)?: "
	read -r con
	case "${con}" in
		y|Y)
			return
			;;
		*)
			clear
			exit 0
			;;
	esac
}

# Function to guess PLDTmyDSLPAL default password
home_bro_ultera() {
	banner
	printf '\n %s' "Enter the last 5 digit of mac address: "
	read -r mac
	printf '%b' "\n"
	printf ' %s\n' "The defalt pass is: HomeBro_${mac}"
	printf '%b' "\n"
	printf ' %s' "Do you want to continue (Y/n)?: "
	read -r con
	case "${con}" in
		y|Y)
			return
			;;
		*)
			clear
			exit 0
			;;
	esac
}

# Main Function
while true; do
	main_menu
done
