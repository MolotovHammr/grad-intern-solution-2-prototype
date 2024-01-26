#!/bin/bash

./scripts/app-2/app-install-2.sh \
  --cleanup-database \
  --base-url="http://solution-2-prototype-production.lndo.site/" \
  --db-host="database-production" \
  --db-name="magento2" \
  --db-user="magento2" \
  --db-password="magento2" \
  --search-engine="elasticsearch7" \
  --elasticsearch-host="elasticsearch2" \
  --session-save="redis" \
  --session-save-redis-host="redis-session2" \
  --session-save-redis-db="2" \
  --cache-backend="redis" \
  --cache-backend-redis-server="redis-cache2" \
  --cache-backend-redis-db="0" \
  --page-cache="redis" \
  --page-cache-redis-server="redis-cache2" \
  --page-cache-redis-db="1" \
  --backend-frontname="admin" \
  --admin-user="admin" \
  --admin-password="Welkom12345" \
  --admin-email="nazar.bachynskyy@iodigital.nl" \
  --admin-firstname="Admin" \
  --admin-lastname="Administrator"