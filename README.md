# Linux Server Performance Stats

This project was developed as part of my **Cloud Computing and DevOps** training during my 6th quarter as a Systems Engineering student. It is a robust Bash script designed to provide quick and essential performance metrics for any Linux server.

## Features
* **CPU Usage:** Real-time breakdown of current processor load.
* **Memory Management:** Clear view of used vs. free RAM (including swap).
* **Disk Analysis:** Monitor storage health and available capacity.
* **Process Tracking:** Identifies the Top 5 processes consuming the most CPU and Memory.
* **System Info:** OS version, uptime, and load average.

## Prerequisites
* Any Linux distribution (Ubuntu, Debian, CentOS, etc.).
* Root or sudo privileges to access certain system metrics.

## Quick Start
1. **Clone the repository:**
   ```bash
   git clone [https://github.com/Avrgael250/Server-Performance-Stats.git](https://github.com/Avrgael250/Server-Performance-Stats.git)
   cd Server-Performance-Stats

2. **Set execution permissions:**
	```bash
	chmod +x server-stats.sh
3. **Run the script:**
	./server-stats.sh
