FROM python:3.11-slim

WORKDIR /app

COPY poetry.lock pyproject.toml ./

RUN pip install poetry

ENV PATH="/root/.local/bin:$PATH"

RUN poetry install --no-root

COPY . .

CMD ["poetry", "run", "python", "main.py"]
