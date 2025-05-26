# Projeto Cloud LorArch

## Descrição do Projeto

O **Cloud LorArch** é uma aplicação minimalista desenvolvida em **ASP.NET Core (.NET 9.0)** para gerenciamento completo de frotas de motos em pátios.  
A aplicação é containerizada usando Docker e o deploy é automatizado em uma máquina virtual (VM) no Azure via pipeline CI/CD configurado no Azure DevOps.

### Tecnologias Utilizadas

- .NET 9 Minimal API  
- Entity Framework Core com Oracle Database  
- Docker (para containerização)  
- Azure DevOps (pipelines CI/CD)  
- Azure Virtual Machine (Linux)  
- SSH para deploy remoto  
- Swagger/OpenAPI para documentação interativa da API  

---

## Configuração do Ambiente

### 1. Máquina Virtual no Azure

- Criar uma VM Linux no Azure (Ubuntu 24.04)  
- Configurar grupo de recursos e rede virtual  
- Abrir portas 22 (SSH), 80 (HTTP) e 443 (HTTPS) nas regras NSG (Network Security Group)  
- Configurar chave SSH para acesso seguro  

### 2. Docker na VM

- Instalar Docker seguindo os comandos oficiais  
- Configurar Docker para iniciar automaticamente  
- Testar instalação com `sudo docker run hello-world`  

### 3. Configurar Git e Repositório

- Instalar Git na VM  
- Configurar usuário e e-mail Git  
- Clonar repositório GitHub do projeto  

### 4. Configurar Azure DevOps

- Criar pipelines CI e CD com arquivos YAML no repositório  
- Criar Service Connection SSH para conexão da pipeline com a VM  

---

## Como Rodar Localmente

### Pré-requisitos

- Docker instalado localmente  
- .NET 9 SDK (opcional para desenvolvimento local)  

### Comandos

1. Buildar a imagem Docker local:

```bash
sudo docker build -t lorarchapi:latest .
