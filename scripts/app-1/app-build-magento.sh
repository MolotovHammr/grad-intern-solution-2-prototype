#!/bin/bash
#
# Do not remove or alter the notices in this preamble.
# This software code regards ISAAC Custom Software.
# Copyright © 2022 ISAAC and/or its affiliates.
# www.isaac.nl All rights reserved. License grant and user rights and obligations
# according to applicable license agreement. Please contact sales@isaac.nl for
# questions regarding license and user rights.
#

set -eo pipefail

composer create-project --no-install --repository-url=https://repo.magento.com/ magento/project-community-edition app-1
composer --working-dir=app-1 --no-install --no-interaction require \
  "magento/module-bundle-sample-data:100.4.*" \
  "magento/module-catalog-rule-sample-data:100.4.*" \
  "magento/module-catalog-sample-data:100.4.*" \
  "magento/module-cms-sample-data:100.4.*" \
  "magento/module-configurable-sample-data:100.4.*" \
  "magento/module-customer-sample-data:100.4.*" \
  "magento/module-downloadable-sample-data:100.4.*" \
  "magento/module-grouped-product-sample-data:100.4.*" \
  "magento/module-msrp-sample-data:100.4.*" \
  "magento/module-offline-shipping-sample-data:100.4.*" \
  "magento/module-product-links-sample-data:100.4.*" \
  "magento/module-review-sample-data:100.4.*" \
  "magento/module-sales-rule-sample-data:100.4.*" \
  "magento/module-sales-sample-data:100.4.*" \
  "magento/module-swatches-sample-data:100.4.*" \
  "magento/module-tax-sample-data:100.4.*" \
  "magento/module-theme-sample-data:100.4.*" \
  "magento/module-widget-sample-data:100.4.*" \
  "magento/module-wishlist-sample-data:100.4.*" \
  "magento/sample-data-media:100.4.*" \
  "markshust/magento2-module-disabletwofactorauth" \

composer --working-dir=app-1 install


