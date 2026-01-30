#!/bin/bash

# --- Función para imprimir encabezados ---
print_header() {
    echo -e "\n========================================"
    echo -e "  $1"
    echo -e "========================================\n"
}

# 1. Total CPU Usage
print_header "ESTADÍSTICAS DE CPU"
# Calculamos el uso restando el 'idle' del 100%
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8 "%"}')
echo "Uso Total de CPU: $cpu_usage"

# 2. Total Memory Usage
print_header "ESTADÍSTICAS DE MEMORIA (RAM)"
free -m | awk 'NR==2{printf "Usada: %sMB | Libre: %sMB | Porcentaje: %.2f%%\n", $3, $4, $3*100/$2}'

# 3. Total Disk Usage
print_header "ESTADÍSTICAS DE DISCO"
df -h --total | grep 'total' | awk '{printf "Usado: %s | Libre: %s | Porcentaje: %s\n", $3, $4, $5}'

# 4. Top 5 Procesos por uso de CPU
print_header "TOP 5 PROCESOS POR CPU"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6

# 5. Top 5 Procesos por uso de Memoria
print_header "TOP 5 PROCESOS POR MEMORIA"
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6

# --- STRETCH GOALS (Extras) ---
print_header "INFORMACIÓN DEL SISTEMA"
echo "Versión del OS: $(cat /etc/os-release | grep "PRETTY_NAME" | cut -d= -f2 | tr -d '\"')"
echo "Uptime: $(uptime -p)"
echo "Carga Promedio: $(uptime | awk -F'load average:' '{ print $2 }')"
echo "Usuarios logueados: $(who | wc -l)"
