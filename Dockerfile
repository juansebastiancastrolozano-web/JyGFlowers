FROM n8nio/n8n:latest

# Configuración forzada de proxy
ENV N8N_TRUST_PROXY=true
ENV TRUST_PROXY=true
ENV N8N_PROTOCOL=https

# Seguridad (puedes cambiar usuario/contraseña)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=sebastian23
ENV N8N_BASIC_AUTH_PASSWORD=yuCAconBorojosalsonadaenpato23
ENV N8N_ENCRYPTION_KEY=eXVDQWNvbkJvcm9qb3NhbHNvbmFkYWVucGF0bzIz

# URLs
ENV WEBHOOK_URL=https://primary-production-a088.up.railway.app
ENV N8N_HOST=primary-production-a088.up.railway.app

# Puerto
EXPOSE 5678

# Comando de inicio
CMD ["n8n", "start"]
