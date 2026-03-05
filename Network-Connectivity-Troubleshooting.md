# Guia de Troubleshooting: Problemas de Conectividade de Rede

## 🚀 Visão Geral

Este guia oferece um passo a passo para diagnosticar e resolver problemas comuns de conectividade de rede em ambientes Windows e Linux. É destinado a analistas de suporte N2 e profissionais de TI que precisam restaurar o acesso à rede de forma eficiente.

## 📝 Procedimento de Diagnóstico e Resolução

### 1. Verificação Inicial

*   **Status Físico:** Verifique cabos de rede, luzes do roteador/switch e adaptadores de rede.
*   **Reiniciar Dispositivos:** Reinicie o computador, roteador e modem.
*   **Outros Dispositivos:** Verifique se outros dispositivos na mesma rede estão funcionando.

### 2. Diagnóstico no Sistema Operacional

#### Windows

1.  **Verificar Status do Adaptador de Rede:**
    *   `ncpa.cpl` -> Clique direito no adaptador -> Status.
2.  **IP e Conectividade Básica:**
    *   Abra o Prompt de Comando (CMD) como administrador.
    *   `ipconfig /all` (Verifique IP, Máscara, Gateway, DNS).
    *   `ping 127.0.0.1` (Loopback).
    *   `ping <IP_do_Gateway>`.
    *   `ping 8.8.8.8` (DNS do Google).
    *   `ping google.com` (Resolução de nomes).
3.  **Resetar Configurações de Rede:**
    *   `ipconfig /release`
    *   `ipconfig /renew`
    *   `ipconfig /flushdns`
    *   `netsh winsock reset`
    *   `netsh int ip reset`
    *   Reinicie o computador.
4.  **Firewall:** Verifique se o Firewall do Windows está bloqueando a conexão.

#### Linux

1.  **Verificar Status do Adaptador de Rede:**
    *   `ip a` ou `ifconfig` (Verifique IP, Máscara).
2.  **IP e Conectividade Básica:**
    *   `ping 127.0.0.1`.
    *   `ping <IP_do_Gateway>` (Verifique o gateway em `/etc/netplan/*.yaml` ou `ip r`).
    *   `ping 8.8.8.8`.
    *   `ping google.com` (Verifique DNS em `/etc/resolv.conf`).
3.  **Reiniciar Serviço de Rede:**
    *   `sudo systemctl restart NetworkManager` (Ubuntu/Debian)
    *   `sudo systemctl restart network` (CentOS/RHEL)
4.  **Firewall (ufw/firewalld):** Verifique regras de firewall.

### 3. Diagnóstico Avançado

*   **`tracert` (Windows) / `traceroute` (Linux):** Para identificar onde a conexão está falhando.
*   **`pathping` (Windows) / `mtr` (Linux):** Para análise de latência e perda de pacotes.
*   **`netstat -an`:** Para verificar conexões ativas e portas abertas.
*   **Verificar Logs:** Analise logs do sistema em busca de erros relacionados à rede.

## 💡 Dicas Adicionais

*   **Drivers:** Certifique-se de que os drivers do adaptador de rede estão atualizados.
*   **Malware:** Execute uma varredura de malware, pois infecções podem causar problemas de rede.
*   **ISP:** Se o problema persistir, entre em contato com seu Provedor de Serviços de Internet (ISP).

--- 

*Este guia foi elaborado por Pedro Henrique de Brito para o projeto IT-Support-Security-Automation.*
