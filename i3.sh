sudo apt install xorg lightdm lightdm-settings i3 polybar dunst picom rofi

git clone https://github.com/lasercata/Dotfiles.git

sudo apt install zip unzip

wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv
