# ── Étape 1 : image de base ──────────────────────
# nginx:alpine = Nginx + Linux Alpine (~7 Mo seulement)
FROM nginx:alpine

# ── Étape 2 : métadonnées ────────────────────────
LABEL maintainer="votre.email@exemple.com"
LABEL version="1.0"
LABEL description="TaskFlow — Application statique Nginx"

# ── Étape 3 : copier les fichiers de l'app ───────
COPY app/ /usr/share/nginx/html/

# ── Étape 4 : copier la config Nginx ─────────────
COPY nginx.conf /etc/nginx/conf.d/default.conf

# ── Étape 5 : port exposé par le conteneur ───────
EXPOSE 80

# ── Étape 6 : commande de démarrage ──────────────
CMD ["nginx", "-g", "daemon off;"]