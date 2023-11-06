#!/bin/sh

RED='\033[0;31m'
YELLOW='\033[0;33m'

# Define paths to zellij configuration file/directory.
  conf_dir="$XDG_CONFIG_HOME/zellij"
  conf_file="$conf_dir/config.kdl"

# Check if configuration file already exists, if yes: Exit safely.
  if [ -f "$conf_file" ]; then
    echo "\n${RED}File \"$conf_file\" exists! Will not overwrite."
    echo "${YELLOW}Please rename or remove the file. Then retry! :)"
    exit
  fi

# Create zellij configuration directory.
  mkdir -p "$conf_dir"

# Create zellij configuration file `config.kdl`.
  zellij setup --dump-config > "$conf_file"
