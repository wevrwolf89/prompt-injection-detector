# ============================
#  Makefile — Operator Commands
# ============================

.PHONY: lint format test run clean

lint:
	ruff check src/ tests/

format:
	black src/ tests/

test:
	pytest -q

run:
	python -m pid.cli

clean:
	rm -rf __pycache__ */__pycache__ .pytest_cache