neofetch
# Install Graphite GTK theme
if [ -f /root/custom_scripts/install_graphite_theme.sh ]; then
    /root/install_scripts/install_graphite_theme.sh
    rm /root/custom_scripts/install_graphite_theme.sh
fi

# Install Qogir icon theme
if [ -f /root/custom_scripts/install_qogir_icon_theme.sh ]; then
    /root/install_scripts/install_qogir_icon_theme.sh
    rm /root/custom_scripts/install_qogir_icon_theme.sh
fi

