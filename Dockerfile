# Use official Python image 
FROM python:3.10-slim 
# Set working directory inside container 
WORKDIR /app # Copy project files 
COPY . /app
# Install dependencies
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt || pip install django
# Expose Django port EXPOSE 8000 # Run the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
