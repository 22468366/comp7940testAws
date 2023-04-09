# Use an official Python runtime as a parent image
FROM python:3.7.9

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Expose the port the bot is running on
EXPOSE 8080

# Start the bot
CMD ["python", "-u", "app.py"]