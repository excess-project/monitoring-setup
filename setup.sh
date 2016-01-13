#!/bin/bash
#  Copyright (C) 2016 University of Stuttgart
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

#
# GLOBAL VARIABLES
#
BASE_DIR=`pwd`
INSTALL_DIR=${BASE_DIR}/monitoring

#
# REQUIRED SOFTWARE
#
echo "Checking required software ..."
echo "> git"
command -v git >/dev/null 2>&1 || { echo " git  : Not installed. Aborting." >&2; exit 1; }
echo "Done."
echo

#
# SETUP ENVIRONMENT
#
rm -rf ${INSTALL_DIR}
mkdir ${INSTALL_DIR}

#
# CLONE AND INSTALL SERVER
#
echo "Downloading and installing components ..."
echo "> monitoring server"
cd ${INSTALL_DIR}
git clone https://github.com/excess-project/monitoring-server
cd monitoring-server
./setup.sh

echo "> monitoring agent"
cd ${INSTALL_DIR}
git clone https://github.com/excess-project/monitoring-agent
cd monitoring-agent
./setup.sh
echo "Done"
echo