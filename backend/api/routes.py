# backend/api/routes.py
from fastapi import APIRouter

router = APIRouter()

@router.get("/")
def root():
    return {"message": "Quant Sight is up!"}
