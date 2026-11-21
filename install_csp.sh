#!/bin/bash
clear
echo "===================================================="
echo "📡 INSTALADOR AUTOMÁTICO CSP + JAVA 8"
echo "===================================================="

echo "[1/3] Baixando e instalando Java 8..."
mkdir -p /usr/java
cd /usr/java
wget -q "https://github.com/Jeanroot/csp-kaua-e-jean/releases/download/v1.0/jre-8u221-linux-x64.tar.gz" -O jre-8u221-linux-x64.tar.gz
tar xf jre-8u221-linux-x64.tar.gz
rm -f jre-8u221-linux-x64.tar.gz
update-alternatives --install /usr/bin/java java /usr/java/jre1.8.0_221/bin/java 1000

echo "[2/3] Baixando e configurando CSP..."
mkdir -p /usr/local/csp
cd /usr/local/csp
wget -q "https://github.com/Jeanroot/csp-kaua-e-jean/releases/download/v1.0/csp.tar.gz" -O csp.tar.gz
tar xf csp.tar.gz
rm -f csp.tar.gz
chmod 777 cardproxy.sh
chmod 777 /usr/local/csp/config/proxy.xml 2>/dev/null || true

echo "[3/3] Iniciando CSP..."
cd /usr/local/csp
./cardproxy.sh start

echo "===================================================="
echo "✅ CSP INSTALADO E INICIADO COM SUCESSO!"
echo "===================================================="
