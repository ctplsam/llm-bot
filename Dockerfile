
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]
# Use the official Python slim image
FROM python:3-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container
COPY . .

# Run the application (adjust the command based on your project)
CMD ["python", "app.py"]

