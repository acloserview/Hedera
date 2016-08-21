#!/bin/sh
_tmpdir="$(dirname "$(readlink -f "${0}")")"
cd $_tmpdir
_gui=whiptail
_guiwidth=800
_guiheight=480


###useless and crappy functions :P
func_radiolist() {
### Displays a radio list outputs $?=1 if nothing is selected
# requires a file/var formatted like:
# TRUE $NAME $DESC
# FALSE $NAME $DESC
	#_guititle=Message
	func_radiolist_real() {
	case $_gui in
		yad)
			$_gui --on-top --sticky --fixed --center --no-markup \
			--window-icon=dialog-information --width=$_guiwidth \
			--height=$_guiheight --title="$_guititle" --button=gtk-ok:0 \
			--button=gtk-no:1 --text="$_guitext" --always-print-result;;
		qarma|zenity|mate-dialogs)
			$_gui --modal --info --title="$_guititle" --width=$_guiwidth \
			--height=$_guiheight --text="$_guitext";;
		kdialog)
			$_gui --title "$_guititle" --msgbox "$_guitext" $_guiwidth \
			$_guiheight;;
		whiptail|dialog)
			
			$_gui --title "$_guititle" --radiolist "$_guitext" 20 78 12 \
$_optionswhiptail 3>&1 1>&2 2>&3;;

	esac
	}
	func_question_real
	case $? in
	0)
		printf "Yes!\n"
		>&2  echo "0";;
	*)
		printf "No!\n"
		>&2  echo "1";;
	esac
}

func_text() {
### Displays a text file - nothing more!
	#_guititle=Textfile
	#_textfile="text.txt"
	case $_gui in
		yad)
			$_gui --on-top --wrap --sticky --fixed --no-markup\
			--center --window-icon=system-installer --width=$_guiwidth \
			--height=$_guiheight --title="$_guititle" --text-info \
			--filename="$_textfile" --always-print-result --button=gtk-ok:0;;
		qarma|zenity|mate-dialogs)
			$_gui --modal --text-info --title="$_guititle" --width=$_guiwidth \
			--height=$_guiheight --filename="$_textfile";;
		kdialog)
			$_gui --title "$_guititle" --textbox "$_textfile" $_guiwidth \
			$_guiheight;;
		whiptail|dialog)
			$_gui --title "$_guititle" --scrolltext --textbox \
			"$_textfile"  20 78;;
	esac
}

func_question() {
### Displays a yes($?=0) no($?=*) message!
	#_guititle=Message
	#_guitext='test test <b> test?'
	func_question_real() {
	case $_gui in
		yad)
			$_gui --on-top --sticky --fixed --center --no-markup \
			--window-icon=dialog-information --width=$_guiwidth \
			--height=$_guiheight --title="$_guititle" --button=gtk-ok:0 \
			--button=gtk-no:1 --text="$_guitext" --always-print-result;;
		qarma|zenity|mate-dialogs)
			$_gui --modal --info --title="$_guititle" --width=$_guiwidth \
			--height=$_guiheight --text="$_guitext";;
		kdialog)
			$_gui --title "$_guititle" --msgbox "$_guitext" $_guiwidth \
			$_guiheight;;
		whiptail|dialog)
			$_gui --title "$_guititle" --scrolltext --yesno \
			"$_guitext" 10 78;;
	esac
	}
	func_question_real
	case $? in
	0)
		printf "Yes!\n"
		>&2  echo "0";;
	*)
		printf "No!\n"
		>&2  echo "1";;
	esac
}

# Display License
_guititle=License _textfile=LICENSE func_text
# ask to accept license!
_guitext="Do you accept this license?" func_question
# choose systemwide or user install
_guititle="Please select" 
_guitext="Would you like to install the theme systemwide or local(SLIM not available)?" 
_options="TRUE Systemwide '' \
FALSE local ''"
func_radiolist
# let the user select
# ask to enable themes
	
echo "exitcode was $?"