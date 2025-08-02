run-backend:
	uvicorn backend.main:app --reload --host 0.0.0.0 --port 8000

run-frontend:
	streamlit run frontend/app.py --server.port 8501

test:
	pytest backend/tests
