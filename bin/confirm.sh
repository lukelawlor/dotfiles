# Function to be sourced in other scripts

# Prompts for yes or no; returns 1 on yes and 0 on no
# usage: confirm 'prompt text'
confirm(){
	prompt=$1

	# Assume yes if $skip_confirm is 1
	if (( $skip_confirm )); then
		return 1
	fi

	# Keep asking until we get an answer
	while true; do
		read -p "$prompt (y/n) " yn
		case $yn in
			"" ) return 1 ;;
			[Yy]* ) return 1 ;;
			[Nn]* ) return 0 ;;
			* ) echo "Please input yes or no. " ;;
		esac
	done
}
