
#!/usr/bin/env bash
set -euo pipefail

echo "=== Verification du projet Campus Tasks ==="

echo "[1/4] Verification du Dockerfile..."
test -f Dockerfile
echo "Dockerfile present."

echo "[2/4] Verification de compose.yaml..."
test -f compose.yaml
docker compose config -q
echo "Configuration Docker Compose valide."

echo "[3/4] Verification des tests..."
test -d tests
pytest -q
echo "Tests termines."

echo "[4/4] Verification des dependances..."
test -f requirements-dev.txt
echo "Fichier requirements-dev.txt present."

echo "=== Toutes les verifications sont terminees ==="
