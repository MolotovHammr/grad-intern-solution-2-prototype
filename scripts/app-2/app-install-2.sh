#!/bin/bash
#
# Do not remove or alter the notices in this preamble.
# This software code regards ISAAC Custom Software.
# Copyright © 2022 ISAAC and/or its affiliates.
# www.isaac.nl All rights reserved. License grant and user rights and obligations
# according to applicable license agreement. Please contact sales@isaac.nl for
# questions regarding license and user rights.
#

set -euo pipefail

./app-2/bin/magento setup:install $@
./app-2/bin/magento deploy:mode:set developer
./app-2/bin/magento config:set twofactorauth/general/enable 0
./app-2/bin/magento config:set admin/security/session_lifetime 31536000
./app-2/bin/magento config:set customer/password/password_reset_protection_type 0
./app-2/bin/magento cron:install

