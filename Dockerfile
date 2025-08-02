FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml .
RUN pip install uv
RUN uv venv && .venv/bin/pip install --upgrade pip

COPY backend/ ./backend/
COPY frontend/ ./frontend/

RUN uv sync

EXPOSE 8000 8501

CMD ["/bin/bash", "-c", "uvicorn backend.main:app --host 0.0.0.0 --port 8000 & streamlit run frontend/app.py --server.port 8501"]
