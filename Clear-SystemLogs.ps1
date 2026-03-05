# Clear-SystemLogs.ps1
# Descrição: Limpa logs de eventos do sistema Windows.
# Autor: Pedro Henrique de Brito
# Data: 05/03/2026

Write-Host "Iniciando limpeza de logs do sistema..."

# Limpa logs de eventos do Windows
Get-WinEvent -ListLog * | ForEach-Object { 
    Try {
        Clear-WinEvent -LogName $_.LogName -ErrorAction SilentlyContinue
        Write-Host "Log $($_.LogName) limpo com sucesso."
    }
    Catch {
        Write-Warning "Não foi possível limpar o log $($_.LogName): $($_.Exception.Message)"
    }
}

Write-Host "Limpeza de logs concluída."
