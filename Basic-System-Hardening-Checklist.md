# Checklist Básico de Hardening de Sistemas

## 🚀 Visão Geral

Este checklist fornece um conjunto de passos essenciais para endurecer (hardening) sistemas operacionais Windows e Linux, aumentando sua segurança contra ameaças comuns. É um guia inicial para Analistas de Cybersecurity Júnior e profissionais de Suporte N2.

## 📝 Procedimentos de Hardening

### 1. Gerenciamento de Usuários e Senhas

*   **Remover Contas Padrão/Inativas:** Exclua ou desabilite contas de usuário padrão (ex: `Guest`) e contas não utilizadas.
*   **Políticas de Senha Fortes:** Implemente políticas que exijam senhas complexas (tamanho mínimo, caracteres especiais, números, letras maiúsculas/minúsculas) e expiração regular.
*   **Bloqueio de Conta:** Configure o bloqueio de conta após múltiplas tentativas falhas de login.
*   **Princípio do Menor Privilégio:** Conceda aos usuários apenas as permissões necessárias para suas funções.

### 2. Atualizações e Patches

*   **Manter SO Atualizado:** Configure atualizações automáticas ou estabeleça um cronograma regular para aplicar patches de segurança no sistema operacional e em todos os softwares instalados.

### 3. Configuração de Firewall

*   **Habilitar Firewall:** Garanta que o firewall do sistema esteja ativo e configurado para bloquear tráfego não autorizado.
*   **Regras Específicas:** Crie regras de firewall para permitir apenas os serviços e portas essenciais.

### 4. Antivírus e Antimalware

*   **Instalar e Atualizar:** Tenha um software antivírus/antimalware atualizado e configure varreduras regulares.

### 5. Auditoria e Logs

*   **Habilitar Auditoria:** Configure o sistema para auditar eventos de segurança importantes (tentativas de login, acesso a arquivos, alterações de configuração).
*   **Revisão de Logs:** Estabeleça um processo para revisar logs de segurança regularmente.

### 6. Desativar Serviços Desnecessários

*   **Minimizar Superfície de Ataque:** Desabilite ou remova serviços e funcionalidades que não são essenciais para a operação do sistema.

### 7. Proteção de Dados

*   **Criptografia:** Considere criptografar dados sensíveis em repouso (BitLocker, LUKS) e em trânsito (SSL/TLS).
*   **Backup:** Implemente uma estratégia de backup robusta e teste a recuperação regularmente.

### 8. Segurança de Rede

*   **VPN:** Utilize VPN para acesso remoto seguro.
*   **Segmentação de Rede:** Segmente a rede para isolar sistemas críticos.

## 🖥️ Específico para Windows

*   **Windows Defender/Endpoint Protection:** Garanta que esteja ativo e configurado.
*   **UAC (User Account Control):** Mantenha o UAC habilitado.
*   **Group Policy:** Utilize GPOs para aplicar configurações de segurança em ambientes de domínio.
*   **PowerShell Execution Policy:** Defina como `RemoteSigned` ou `AllSigned`.

## 🐧 Específico para Linux

*   **SSH:** Desabilite login root via SSH, use autenticação por chave, mude a porta padrão.
*   **SELinux/AppArmor:** Habilite e configure para controle de acesso obrigatório.
*   **`sudo`:** Configure `sudo` para conceder privilégios de forma granular.
*   **Remover Pacotes Desnecessários:** Utilize `apt autoremove` ou `yum autoremove`.

--- 

*Este checklist foi elaborado por Pedro Henrique de Brito para o projeto IT-Support-Security-Automation.*
