# this file contains common functionality to be used across ntag scripts
# it initializes common variables and defines common functions

# edit as you wish:
# assume that opus files are going to be tagged
assume_opus=1

# don't edit
audio_file_extension=''

# ensure that $audio_file_extension is set to something
# usage: set_audio_file_extension 'audio_file_extension initializer'
set_audio_file_extension(){
	audio_file_extension=$1
	if [[ -z $audio_file_extension ]]; then
		if (( $assume_opus )); then
			audio_file_extension=opus
		else
			echo "$0: please provide an audio file extension"
			exit 1
		fi
	fi
}

# exit if no audio files ending in .$audio_file_extension are found
exit_if_no_files_found(){
	if [[ -z $(find -name "*.$audio_file_extension") ]]; then
		echo "$0: come on bruh no .$audio_file_extension files exist here"
		exit 1
	fi
}
