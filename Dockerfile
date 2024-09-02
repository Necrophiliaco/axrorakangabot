FROM python:3.8-slim-buster

# Update and install any necessary packages
RUN apt update && apt upgrade -y && apt install git -y

# Set the working directory
WORKDIR /Advance-Auto-Filter

# Copy your bot files into the container
COPY . .

# Install dependencies
RUN pip3 install -U pip && pip3 install -U -r requirements.txt

# Command to start the bot
CMD ["python3", "bot.py"]
