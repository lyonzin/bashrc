#!/bin/bash

#wget -qO- https://raw.githubusercontent.com/lyonzin/bashrc/refs/heads/main/setupparrot.sh | bash


# Função para exibir mensagens formatadas
function print_message {
    echo -e "\n\e[1;34m$1\e[0m\n"
}

# Atualização completa do sistema
print_message "Atualizando o sistema..."
sudo apt-get update --yes && \
sudo apt-get upgrade --yes && \
sudo apt-get dist-upgrade --yes && \
sudo apt full-upgrade --yes && \
sudo apt-get autoremove --yes && \
sudo apt-get clean --yes && \
sudo apt autoremove --yes

print_message "Atualização concluída com sucesso!"

# Instalação do OpenSSH Server
print_message "Instalando o OpenSSH Server..."
sudo apt-get install openssh-server --yes

# Habilitando e iniciando o serviço SSH
print_message "Habilitando e iniciando o serviço SSH..."
sudo systemctl enable ssh
sudo systemctl start ssh

# Configuração do SSH
print_message "Configurando o SSH..."
SSH_CONFIG="/etc/ssh/sshd_config"

sudo sed -i 's/^#Port 22/Port 22/' $SSH_CONFIG
sudo sed -i 's/^#PermitRootLogin prohibit-password/PermitRootLogin no/' $SSH_CONFIG
sudo sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication yes/' $SSH_CONFIG
sudo sed -i 's/^#PubkeyAuthentication yes/PubkeyAuthentication yes/' $SSH_CONFIG

# Adiciona usuários permitidos (altere "seu_usuario" conforme necessário)
ALLOWED_USERS="seu_usuario"
if ! grep -q "AllowUsers $ALLOWED_USERS" $SSH_CONFIG; then
    echo "AllowUsers $ALLOWED_USERS" | sudo tee -a $SSH_CONFIG
fi

# Reiniciando o serviço SSH
print_message "Reiniciando o serviço SSH para aplicar as alterações..."
sudo systemctl restart ssh

# Teste de conexão SSH
print_message "Configuração do SSH concluída! Teste conectando com: ssh $ALLOWED_USERS@seu_ip"
