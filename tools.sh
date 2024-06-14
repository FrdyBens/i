#!/bin/bash

echo "Choose installation category:"
echo "1. Web Servers"
echo "2. Control Panels"
echo "3. Database Servers"
echo "4. Docker & Kubernetes"
echo "5. Monitoring & Logging"
echo "6. Development Tools"
echo "7. Networking & Security"
echo "8. Miscellaneous"
read -p "Enter the category number: " category

# Update package lists
sudo apt update

# Function to install Web Servers
install_web_servers() {
    echo "Installing Web Servers..."
    echo "1. Apache2"
    echo "2. Nginx"
    echo "3. Lighttpd"
    echo "4. Caddy"
    echo "5. Tomcat"
    echo "6. Cherokee"
    echo "7. Hiawatha"
    echo "8. OpenLiteSpeed"
    echo "9. Abyss Web Server"
    echo "10. thttpd"
    read -p "Enter your choices (space-separated numbers): " choices

    for choice in $choices; do
        case $choice in
            1)
                echo "Installing Apache2..."
                sudo apt install -y apache2
                echo "Apache2 installed."
                ;;
            2)
                echo "Installing Nginx..."
                sudo apt install -y nginx
                echo "Nginx installed."
                ;;
            3)
                echo "Installing Lighttpd..."
                sudo apt install -y lighttpd
                echo "Lighttpd installed."
                ;;
            4)
                echo "Installing Caddy..."
                # Add Caddy installation steps here
                echo "Caddy installed."
                ;;
            5)
                echo "Installing Apache Tomcat..."
                sudo apt install -y tomcat9
                echo "Apache Tomcat installed."
                ;;
            6)
                echo "Installing Cherokee..."
                sudo apt install -y cherokee
                echo "Cherokee installed."
                ;;
            7)
                echo "Installing Hiawatha..."
                sudo apt install -y hiawatha
                echo "Hiawatha installed."
                ;;
            8)
                echo "Installing OpenLiteSpeed..."
                # Add OpenLiteSpeed installation steps here
                echo "OpenLiteSpeed installed."
                ;;
            9)
                echo "Installing Abyss Web Server..."
                # Add Abyss Web Server installation steps here
                echo "Abyss Web Server installed."
                ;;
            10)
                echo "Installing thttpd..."
                sudo apt install -y thttpd
                echo "thttpd installed."
                ;;
            *)
                echo "Invalid choice: $choice"
                ;;
        esac
    done
}

# Function to install Control Panels
install_control_panels() {
    echo "Installing Control Panels..."
    echo "1. CyberPanel"
    echo "2. Plesk"
    echo "3. cPanel"
    echo "4. DirectAdmin"
    echo "5. Webmin"
    echo "6. Froxlor"
    echo "7. Vesta Control Panel"
    echo "8. ISPConfig"
    echo "9. Ajenti"
    echo "10. Centos Web Panel"
    read -p "Enter your choices (space-separated numbers): " choices

    for choice in $choices; do
        case $choice in
            1)
                echo "Installing CyberPanel..."
                # Add CyberPanel installation steps here
                echo "CyberPanel installed."
                ;;
            2)
                echo "Installing Plesk..."
                # Add Plesk installation steps here
                echo "Plesk installed."
                ;;
            3)
                echo "Installing cPanel..."
                # Add cPanel installation steps here
                echo "cPanel installed."
                ;;
            4)
                echo "Installing DirectAdmin..."
                # Add DirectAdmin installation steps here
                echo "DirectAdmin installed."
                ;;
            5)
                echo "Installing Webmin..."
                sudo apt install -y webmin
                echo "Webmin installed."
                ;;
            6)
                echo "Installing Froxlor..."
                # Add Froxlor installation steps here
                echo "Froxlor installed."
                ;;
            7)
                echo "Installing Vesta Control Panel..."
                # Add Vesta CP installation steps here
                echo "Vesta Control Panel installed."
                ;;
            8)
                echo "Installing ISPConfig..."
                # Add ISPConfig installation steps here
                echo "ISPConfig installed."
                ;;
            9)
                echo "Installing Ajenti..."
                # Add Ajenti installation steps here
                echo "Ajenti installed."
                ;;
            10)
                echo "Installing Centos Web Panel..."
                # Add Centos Web Panel installation steps here
                echo "Centos Web Panel installed."
                ;;
            *)
                echo "Invalid choice: $choice"
                ;;
        esac
    done
}

# Function to install Database Servers
install_database_servers() {
    echo "Installing Database Servers..."
    echo "1. MySQL"
    echo "2. PostgreSQL"
    echo "3. MariaDB"
    echo "4. SQLite"
    echo "5. MongoDB"
    echo "6. Redis"
    echo "7. CouchDB"
    echo "8. Cassandra"
    echo "9. DynamoDB Local"
    echo "10. CockroachDB"
    read -p "Enter your choices (space-separated numbers): " choices

    for choice in $choices; do
        case $choice in
            1)
                echo "Installing MySQL..."
                sudo apt install -y mysql-server
                echo "MySQL installed."
                ;;
            2)
                echo "Installing PostgreSQL..."
                sudo apt install -y postgresql
                echo "PostgreSQL installed."
                ;;
            3)
                echo "Installing MariaDB..."
                sudo apt install -y mariadb-server
                echo "MariaDB installed."
                ;;
            4)
                echo "Installing SQLite..."
                sudo apt install -y sqlite3
                echo "SQLite installed."
                ;;
            5)
                echo "Installing MongoDB..."
                # Add MongoDB installation steps here
                echo "MongoDB installed."
                ;;
            6)
                echo "Installing Redis..."
                sudo apt install -y redis-server
                echo "Redis installed."
                ;;
            7)
                echo "Installing CouchDB..."
                # Add CouchDB installation steps here
                echo "CouchDB installed."
                ;;
            8)
                echo "Installing Cassandra..."
                # Add Cassandra installation steps here
                echo "Cassandra installed."
                ;;
            9)
                echo "Installing DynamoDB Local..."
                # Add DynamoDB Local installation steps here
                echo "DynamoDB Local installed."
                ;;
            10)
                echo "Installing CockroachDB..."
                # Add CockroachDB installation steps here
                echo "CockroachDB installed."
                ;;
            *)
                echo "Invalid choice: $choice"
                ;;
        esac
    done
}

# Function to install Docker & Kubernetes
install_docker_kubernetes() {
    echo "Installing Docker & Kubernetes..."
    echo "1. Docker"
    echo "2. Kubernetes (k3s)"
    echo "3. Docker Compose"
    echo "4. Portainer"
    echo "5. KubeSphere"
    echo "6. Rancher"
    echo "7. Docker Swarm"
    echo "8. MicroK8s"
    echo "9. Minikube"
    echo "10. OpenShift"
    read -p "Enter your choices (space-separated numbers): " choices

    for choice in $choices; do
        case $choice in
            1)
                echo "Installing Docker..."
                # Add Docker installation steps here
                echo "Docker installed."
                ;;
            2)
                echo "Installing k3s (Kubernetes)..."
                # Add k3s installation steps here
                echo "k3s (Kubernetes) installed."
                ;;
            3)
                echo "Installing Docker Compose..."
                sudo apt install -y docker-compose
                echo "Docker Compose installed."
                ;;
            4)
                echo "Installing Portainer..."
                docker volume create portainer_data
                docker run -d -p 9000:9000 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
                echo "Portainer installed and running on http://localhost:9000."
                ;;
            5)
                echo "Installing KubeSphere..."
                # Add KubeSphere installation steps here
                echo "KubeSphere installed."
                ;;
            6)
                echo "Installing Rancher..."
                # Add Rancher installation steps here
                echo "Rancher installed."
                ;;
            7)
                echo "Installing Docker Swarm..."
                # Add Docker Swarm installation steps here
                echo "Docker Swarm installed."
                ;;
            8)
                echo "Installing MicroK8s..."
                # Add MicroK8s installation steps here
                echo "MicroK8s installed."
                ;;
            9)
                echo "Installing Minikube..."
                # Add Minikube installation steps here
                echo "Minikube installed."
                ;;
            10)
                echo "Installing OpenShift..."
                # Add OpenShift installation steps here
                echo "OpenShift installed."
                ;;
            *)
                echo "Invalid choice: $choice"
                ;;
        esac
    done
}

# Function to install Monitoring & Logging
