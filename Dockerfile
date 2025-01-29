# Use an official Python image as a base
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy application files
COPY app/ /app/

# Install dependencies
RUN pip install -r requirements.txt

# Run the application with Gunicorn
CMD ["gunicorn", "-w", "3", "-b", "0.0.0.0:5000", "app:app"]

