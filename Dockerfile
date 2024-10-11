# Step 1: Use Python image
FROM python:3.10-slim-buster

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy necessary files to the Docker image
COPY requirements.txt /app/  
COPY templates /app/

# Step 4: Install dependencies
RUN pip install --upgrade pip  # Upgrade pip (optional but recommended)
RUN pip install -r requirements.txt  # Install dependencies

# Step 5: Set the command to run the application
CMD ["python3", "app.py"]
