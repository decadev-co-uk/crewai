# Week 8.1: CrewAI

## Introduction
CrewAI is an agentic framework built on top of LangChain that aims to build agents more quickly. CrewAI abstracts away much of the building of agentic workflows, requiring less coding logic while guiding the prompting process.

## Slides

[Slides](https://docs.google.com/presentation/d/187Ocq5jxONhhNVNRtmaQnlbeAgLfhrQQ7GVS-msWd-A/edit?usp=sharing)

## Prerequisites
Before you begin, ensure you have met the following requirements:
- Docker Desktop (recommended for local setup)
- Python 3.11.0 or greater (local setup with virtual environment)
- You'll need a Serper API key [HERE](https://serper.dev/)
- You'll need a Browserless API key [HERE](https://www.browserless.io/)
- You'll need an SEC API key [HERE](https://sec-api.io/)

### Set up environment variables:
- Copy the sample environment files in each directory (`stock_analysis` and `trip_planner`):
  ```bash
  cp .env.sample .env
  ```
- Edit the `.env` files for both the `stock_analysis` and `trip_planner` directories.

## Docker (recommended)
1. Run the `stock_analysis` and `trip_planner` services and follow the prompts:
   ```
   docker compose run -rm stock_analysis
   docker compose run -rm trip_planner
   ```

## Running Different Scripts
You can use the provided `run.sh` script for easier execution.
Make sure to make the script executable with `chmod +x run.sh` in the CLI before using:
```bash
./run.sh stock_analysis
./run.sh trip_planner
```
## Local Setup (Alternative to Docker)
If you prefer to run the examples locally:

1. Set up a virtual environment in the root directory:
    ```bash
    python3 -m venv .venv
    source .venv/bin/activate  # On Windows use `.venv\Scripts\activate`
    ```
2. Run `pip install poetry` in the root directory.
3. Make sure and set up the `.env` files in each application directory (`stock_analysis` and `trip_planner`) as instructed above.
4. `cd` into and run `poetry install --no-root` in each application directory (`stock_analysis` and `trip_planner`).
5. In the application directory you want to run (`stock_analysis` or `trip_planner`), run the script with `python main.py`

## Need Help?
Reach out to the learning assistants
