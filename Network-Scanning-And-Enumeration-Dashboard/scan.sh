#!/bin/bash

# Network Subnet (update automatically)
SUBNET="192.168.174.0/24"
TIMESTAMP=$(date "+%Y-%m-%d_%H-%M-%S")
OUTPUT_DIR="results_$TIMESTAMP"
mkdir -p "$OUTPUT_DIR"

echo "[*] Starting Network Scan on $SUBNET"
echo "[*] Discovering live hosts using Netdiscover..."
sudo netdiscover -r "$SUBNET" -PN > "$OUTPUT_DIR/netdiscover.txt"

echo "[*] Extracting IP addresses from Netdiscover output..."
grep -Eo '192\.168\.174\.[0-9]+' "$OUTPUT_DIR/netdiscover.txt" | sort -u > "$OUTPUT_DIR/ips.txt"

echo "[*] Running Nmap scan on each host..."
while read -r ip; do
    echo "Scanning $ip..."
    nmap -A -T4 "$ip" > "$OUTPUT_DIR/nmap_$ip.txt"
done < "$OUTPUT_DIR/ips.txt"

echo "[*] Aggregating Summary to dashboard.txt..."
echo "==== Network Scan Summary ($TIMESTAMP) ====" > "$OUTPUT_DIR/dashboard.txt"
echo >> "$OUTPUT_DIR/dashboard.txt"

while read -r ip; do
    echo "Host: $ip" >> "$OUTPUT_DIR/dashboard.txt"
    grep -E "open|Running:" "$OUTPUT_DIR/nmap_$ip.txt" >> "$OUTPUT_DIR/dashboard.txt"
    echo "----------------------------------------" >> "$OUTPUT_DIR/dashboard.txt"
done < "$OUTPUT_DIR/ips.txt"

echo "[*] Dashboard ready at: $OUTPUT_DIR/dashboard.txt"
