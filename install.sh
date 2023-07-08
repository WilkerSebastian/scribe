#!/bin/bash

script_path="./bin/scribe"

dest_dir="/usr/local/bin"
if [ ! -d "$dest_dir" ]; then
  echo "O diretório $dest_dir não existe."
  exit 1
fi

if [ ! -f "$script_path" ]; then
  echo "O arquivo $script_path não existe."
  exit 1
fi

if [ -f "$dest_dir/$(basename "$script_path")" ]; then
  echo "O script já existe em $dest_dir."
  exit 1
fi

cp "$script_path" "$dest_dir/"

chmod +x "$dest_dir/$(basename "$script_path")"

profile_file=""
if [ -f "$HOME/.bashrc" ]; then
  profile_file="$HOME/.bashrc"
elif [ -f "$HOME/.bash_profile" ]; then
  profile_file="$HOME/.bash_profile"
fi

if [ -z "$profile_file" ]; then
  echo "Não foi possível encontrar o arquivo de perfil do usuário."
  echo "Adicione o diretório $dest_dir ao PATH manualmente."
else
  if ! grep -q "export PATH=\"\$PATH:$dest_dir\"" "$profile_file"; then
    echo "export PATH=\"\$PATH:$dest_dir\"" >> "$profile_file"
    echo "O diretório $dest_dir foi adicionado ao PATH em $profile_file."
    echo "Por favor, reinicie o terminal ou execute 'source $profile_file' para atualizar o PATH."
  else
    echo "O diretório $dest_dir já está configurado no PATH em $profile_file."
  fi
fi
