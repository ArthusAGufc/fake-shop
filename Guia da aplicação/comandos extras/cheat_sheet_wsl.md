
# 📄 Cheat Sheet Completa de Comandos WSL

## 1. Instalação e Configuração Inicial

```bash
wsl --install
```
Instala todos os componentes essenciais do WSL (kernel, distribuição padrão, etc).

```bash
wsl --install -d <NomeDistro>
```
Instala uma distribuição específica disponível na Microsoft Store.  
**Exemplo:**
```bash
wsl --install -d Debian
```

## 2. Uso Básico e Execução de Comandos

```bash
wsl
```
Inicia a distribuição Linux padrão instalada no WSL.

```bash
wsl [comando]
```
Executa um comando específico sem abrir uma sessão interativa.  
**Exemplo:**
```bash
wsl ls -la
```

```bash
wsl --exec [comando]
# ou
wsl -e [comando]
```
Executa um comando diretamente.  
**Exemplo:**
```bash
wsl --exec bash -c "echo Olá, Mundo!"
```

```bash
wsl -d <NomeDistro>
```
Inicia uma distribuição específica.  
**Exemplo:**
```bash
wsl -d Ubuntu
```

```bash
wsl -u <Usuário>
```
Inicia com o usuário especificado.  
**Exemplo:**
```bash
wsl -u root
```

## 3. Gerenciamento de Distribuições

```bash
wsl --list
# ou
wsl -l
```
Lista distribuições instaladas.

```bash
wsl --list --verbose
# ou
wsl -l -v
```
Lista com detalhes da versão e status.

```bash
wsl --list --online
# ou
wsl -l -o
```
Lista distribuições disponíveis para instalação.

```bash
wsl --setdefault <NomeDistro>
```
Define a distribuição padrão.  
**Exemplo:**
```bash
wsl --setdefault Ubuntu
```

```bash
wsl --terminate <NomeDistro>
```
Encerra a instância da distribuição.  
**Exemplo:**
```bash
wsl --terminate Ubuntu
```

```bash
wsl --shutdown
```
Encerra todas as distribuições e o serviço WSL.

```bash
wsl --unregister <NomeDistro>
```
Remove uma distribuição (⚠️ dados serão perdidos).  
**Exemplo:**
```bash
wsl --unregister Ubuntu
```

### Comandos Legados (wslconfig)

```bash
wslconfig /l
```
Lista distribuições instaladas (legado).

```bash
wslconfig /s <NomeDistro>
```
Define a distribuição padrão (legado).

```bash
wslconfig /u <NomeDistro>
```
Remove a distribuição (legado).

## 4. Gerenciamento de Versões

```bash
wsl --set-version <NomeDistro> <Versão>
```
Converte para WSL 1 ou 2.  
**Exemplo:**
```bash
wsl --set-version Ubuntu 2
```

```bash
wsl --set-default-version <Versão>
```
Define a versão padrão para novas instalações.  
**Exemplo:**
```bash
wsl --set-default-version 2
```

## 5. Exportação e Importação de Distribuições

```bash
wsl --export <NomeDistro> <Arquivo>
```
Exporta a distribuição para um `.tar`.  
**Exemplo:**
```bash
wsl --export Ubuntu ubuntu-backup.tar
```

```bash
wsl --import <NomeDistro> <DiretórioRaiz> <Arquivo>
```
Importa uma distribuição a partir de backup.  
**Exemplo:**
```bash
wsl --import Ubuntu C:\WSL\Ubuntu ubuntu-backup.tar
```

## 6. Montagem e Desmontagem de Discos

```bash
wsl --mount <CaminhoDoDisco> [--partition <Número>] [--bare]
```
Monta um disco físico ou partição.  
**Exemplo:**
```bash
wsl --mount \\.\PHYSICALDRIVE2 --partition 1
```

```bash
wsl --unmount <CaminhoDoDisco>
```
Desmonta o disco montado.  
**Exemplo:**
```bash
wsl --unmount \\.\PHYSICALDRIVE2
```

## 7. Conversão de Caminhos – `wslpath`

```bash
wslpath <CaminhoWindows>
```
Converte de Windows para Linux.  
**Exemplo:**
```bash
wslpath C:\Users\Usuario
```

```bash
wslpath -w <CaminhoLinux>
```
Converte de Linux para Windows.  
**Exemplo:**
```bash
wslpath -w /home/usuario
```

```bash
wslpath -u <CaminhoWindows>
```
Converte de Windows para Linux.  
**Exemplo:**
```bash
wslpath -u C:\Users\Usuario
```

## 8. Atualização e Status

```bash
wsl --update
```
Atualiza o WSL e o kernel.

```bash
wsl --status
```
Exibe status atual do WSL.

## 9. Ajuda e Informações Adicionais

```bash
wsl --help
```
Mostra ajuda com todos os comandos disponíveis.

## 📝 Observações Gerais

- **Local de Execução:**  
  Todos os comandos podem ser executados no **cmd** ou **PowerShell**. Alguns requerem **privilégios de administrador**.

- **Cuidados:**  
  Operações como `--unregister` ou `--import` **podem causar perda de dados**. Faça backups!

- **Documentação Oficial:**  
  [https://learn.microsoft.com/windows/wsl/](https://learn.microsoft.com/windows/wsl/)

---
