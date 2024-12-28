#!/bin/bash

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
sudo sed -i 's/^#PermitRootLogin prohibit-password/PermitRootLogin yes/' $SSH_CONFIG
sudo sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication yes/' $SSH_CONFIG
sudo sed -i 's/^#PubkeyAuthentication yes/PubkeyAuthentication yes/' $SSH_CONFIG

# Adiciona usuários permitidos (altere "seu_usuario" conforme necessário)
ALLOWED_USERS="lyon"
if ! grep -q "AllowUsers $ALLOWED_USERS" $SSH_CONFIG; then
    echo "AllowUsers $ALLOWED_USERS" | sudo tee -a $SSH_CONFIG
fi

# Reiniciando o serviço SSH
print_message "Reiniciando o serviço SSH para aplicar as alterações..."
sudo systemctl restart ssh

# Configurando a senha do root
print_message "Configurando a senha do root..."
echo -e "94823176\n94823176" | sudo passwd root

# Configurando a senha do usuário lyon
print_message "Configurando a senha do usuário lyon..."
echo -e "94823176\n94823176" | sudo passwd lyon

print_message "Senhas configuradas com sucesso! Teste conectando com: ssh root@seu_ip ou ssh lyon@seu_ip"
