FROM python:3.10
WORKDIR /opt/flask
RUN chown 1000:1000 /opt/flask
USER 1000
RUN python -m venv /opt/flask/venv
RUN . venv/bin/activate && pip install flask_simplelogin
COPY . /opt/flask
EXPOSE 5000
CMD . venv/bin/activate && python example/simple_app.py
