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

./scripts/edit-auth-json.sh && ./scripts/app-2/app-build-magento-2.sh

