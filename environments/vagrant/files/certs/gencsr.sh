#!/bin/bash

genkey() {
  domain=$1
  key="${domain}.key"
  csr="${domain}.csr"
  crt="${domain}.crt"
  openssl genrsa -des3 -passout pass:x -out "${key}.pass" 2048
  openssl rsa -passin pass:x -in "${key}.pass" -out "$key"
  rm "${key}.pass"
  openssl req -new -key "$key" -out "$csr" \
    -subj "/C=US/ST=California/L=San Francisco/O=$domain/OU=$domain/CN=$domain"
  openssl x509 -req -days 365 \
    -in "$csr" -signkey "$key" -out "$crt"
}

genkey "nodeapp.vagrant.dev"
genkey "railsapp.vagrant.dev"

