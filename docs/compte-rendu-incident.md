1. **Incident simulé :** arrêt volontaire du conteneur `campus-tasks-incident` pour simuler une indisponibilité du service.
2. **Détection :** la requête `curl http://localhost:8081/health` a échoué après l'arrêt du conteneur.
3. **Diagnostic :** la vérification de l'état du conteneur a confirmé qu'il était arrêté.
4. **Remédiation :** redémarrage du conteneur avec `docker start campus-tasks-incident`.
5. **Validation :** le service est redevenu accessible et l'endpoint `/health` a retourné `{"status":"ok"}`.
