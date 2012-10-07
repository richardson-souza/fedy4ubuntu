# Name: Install TeamViewer
# Command: install_teamviewer
# Value: False

install_teamviewer() {
show_func "Installing TeamViewer"
if [[ "$(install_teamviewer_test)" = "Installed" ]]; then
	show_status "TeamViewer already installed"
else
	file32="teamviewer_linux.rpm"
	get32="http://www.teamviewer.com/download/teamviewer_linux.rpm"
	file64="$file32"
	get64="$get32"
	process_pkg
fi
[[ "$(install_teamviewer_test)" = "Installed" ]]; exit_state
}

install_teamviewer_test() {
if [[ -d /opt/teamviewer/teamviewer ]]; then
	printf "Installed"
else
	printf "Not installed"
fi
}