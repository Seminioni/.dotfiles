#!/usr/bin/env bash

fonts_dir="${HOME}/.local/share/fonts/FiraCode"
if [ ! -d ${fonts_dir} ]; then
    echo "mkdir -p $fonts_dir"
    mkdir -p ${fonts_dir}

    for type in Bold Light Medium Regular Retina; do
        file_path="${HOME}/.local/share/fonts/FiraCode/FiraCode-${type}.ttf"
        file_url="https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true"
        echo "wget -O $file_path $file_url"
        wget -O ${file_path} ${file_url}
    done

    echo "fc-cache -f"
    fc-cache -f
else
    echo "Found fonts dir $fonts_dir"
fi
