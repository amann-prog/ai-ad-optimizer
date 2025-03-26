from sqlalchemy import create_engine

# Database credentials
DATABASE_URL = "postgresql://postgres:root1234@localhost:5432/ai_ad_optimization"

# Create an engine instance
engine = create_engine(DATABASE_URL)

# Test connection
try:
    with engine.connect() as connection:
        print("Connected to PostgreSQL and ai_ad_optimization database successfully!")
except Exception as e:
    print("Error:", e)
