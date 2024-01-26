#!/bin/bash

./scripts/app-1/app-install.sh \
  --cleanup-database \
  --base-url="http://solution-2-prototype-cms-staging.lndo.site/" \
  --db-host="database-staging" \
  --db-name="magento1" \
  --db-user="magento1" \
  --db-password="magento1" \
  --search-engine="elasticsearch7" \
  --elasticsearch-host="elasticsearch1" \
  --session-save="redis" \
  --session-save-redis-host="redis-session1" \
  --session-save-redis-db="2" \
  --cache-backend="redis" \
  --cache-backend-redis-server="redis-cache1" \
  --cache-backend-redis-db="0" \
  --page-cache="redis" \
  --page-cache-redis-server="redis-cache1" \
  --page-cache-redis-db="1" \
  --backend-frontname="admin" \
  --admin-user="admin" \
  --admin-password="Welkom12345" \
  --admin-email="nazar.bachynskyy@iodigital.nl" \
  --admin-firstname="Admin" \
  --admin-lastname="Administrator"