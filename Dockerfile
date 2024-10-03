FROM python:3.12

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY ./app/. ./

RUN pip install -r requirements.txt
ENV DATABASE_URL=postgresql://lakshay24_user:xJzPL8gYPozil14ohBh6kuh6fDCdH0u5@dpg-crv7hr08fa8c73csnphg-a.oregon-postgres.render.com/lakshay24

# Run the application using uvicorn when the container launches
CMD uvicorn main:app --host 0.0.0.0 --port $PORT
