#!/bin/bash
#========================================================
# Jenkins Installation Script (Ubuntu/Debian)
# Author: omkar hiwale
#========================================================

set -e

echo -e "\n=== 🚀 Starting Jenkins Installation ===\n"

# 1️⃣ Update system packages
echo "📦 Updating package list..."
sudo apt update -y

# 2️⃣ Install Java (Jenkins requires Java 11+)
echo "☕ Installing Java..."
sudo apt install -y openjdk-17-jdk

# 3️⃣ Add Jenkins repository key
echo "🔑 Adding Jenkins GPG key..."
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# 4️⃣ Add Jenkins repository to sources list
echo "📂 Adding Jenkins repository..."
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | \
    sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# 5️⃣ Update repository list after adding Jenkins repo
echo "🔄 Updating package list again..."
sudo apt update -y

# 6️⃣ Install Jenkins
echo "⚙️ Installing Jenkins..."
sudo apt install -y jenkins

# 7️⃣ Enable and start Jenkins service
echo "🟢 Enabling and starting Jenkins service..."
sudo systemctl enable jenkins
sudo systemctl start jenkins

# 8️⃣ Display Jenkins status
echo -e "\n📋 Jenkins service status:"
sudo systemctl status jenkins --no-pager

# 9️⃣ Show initial admin password
echo -e "\n🔑 Initial Jenkins Admin Password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo -e "\n✅ Jenkins installation complete!"
echo "🌐 Access Jenkins at: http://<your_server_ip>:8080"

