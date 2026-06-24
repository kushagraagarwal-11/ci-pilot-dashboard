FROM python:3.12-slim
WORKDIR /site
COPY index.html .
# Railway provides $PORT; bind to it (fallback 8080 for local runs)
CMD ["sh", "-c", "python -m http.server ${PORT:-8080} --bind 0.0.0.0"]
