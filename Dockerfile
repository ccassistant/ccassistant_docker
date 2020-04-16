FROM python:3

# RUN apt update
# RUN apt install git -y

WORKDIR /app/
RUN git clone https://github.com/ccassistant/Ants-Auto-Trading-Bot.git

WORKDIR /app/Ants-Auto-Trading-Bot
RUN git checkout dev
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "sh", "run.sh"]
# CMD [ "python", "./your-daemon-or-script.py" ]