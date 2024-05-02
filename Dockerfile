
FROM python:3.12.3

WORKDIR /app

COPY . .

# Install Flask
RUN pip install Flask

# Set the FLASK_DEBUG environment variable
ENV FLASK_DEBUG=1

# Expose the Flask port
EXPOSE 5000

# Specify the command to run on container startup
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0" ]