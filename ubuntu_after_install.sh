#!/bin/bash

sudo apt update && sudo apt upgrade

# Must have apts 
sudo apt install wget curl zip unzip

# install a nerd font
declare -a fonts=(
    #BitstreamVeraSansMono
    #CodeNewRoman
    #DroidSansMono
    #FiraCode
    #FiraMono
    #Go-Mono
    #Hack
    #Hermit
    #JetBrainsMono
    #Meslo
    #Noto
    #Overpass
    #ProggyClean
    #RobotoMono
    #SourceCodePro
    #SpaceMono
    #Ubuntu
    UbuntuMono
)

# Visit https://www.nerdfonts.com/ to get the version
version='3.3.0'
fonts_dir="${HOME}/.local/share/fonts"

if [[ ! -d "$fonts_dir" ]]; then
    mkdir -p "$fonts_dir"
fi

for font in "${fonts[@]}"; do
    zip_file="${font}.zip"
    download_url="https://github.com/ryanoasis/nerd-fonts/releases/download/v${version}/${zip_file}"
    echo "Downloading $download_url"
    wget "$download_url"
    unzip "$zip_file" -d "$fonts_dir"
    rm "$zip_file"
done

find "$fonts_dir" -name '*Windows Compatible*' -delete

fc-cache -fv

# install starship
curl -sS https://starship.rs/install.sh | sh

echo "/n eval "$(starship init bash)"" >> ~/.bashrc

source ~/.bashrc
