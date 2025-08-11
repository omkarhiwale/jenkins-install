# 🚀 Jenkins Installation Script (Ubuntu/Debian)

This repository contains a simple shell script to **install Jenkins (LTS)** on Ubuntu/Debian-based systems.  
It automatically installs Java, adds the Jenkins repository, installs Jenkins, and starts the service.

---

## 📋 Features
- Installs **OpenJDK 17** (required for Jenkins)
- Adds the **official Jenkins LTS repository**
- Installs and configures Jenkins as a systemd service
- Displays the **initial admin password** after installation

---

## 🛠️ Prerequisites
- Ubuntu/Debian-based system
- `sudo` privileges
- Internet connection

---

## 📥 Installation Steps

### 1️⃣ Clone this repository
```bash
git clone https://github.com/abhay-dandge/jenkins-install.git
cd jenkins-install
```

### 2️⃣ Make the script executable
```bash
chmod +x install_jenkins.sh
```
### 3️⃣ Run the script
```bash
./install_jenkins.sh
🌐 Access Jenkins
After installation, open your browser and go to:
http://<your_server_ip>:8080
```
### 🔑 Initial Admin Password
The script will automatically display the Jenkins admin password.
If you need to retrieve it later:

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
