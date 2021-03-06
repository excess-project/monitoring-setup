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
SERVER_DIR=${INSTALL_DIR}/monitoring-server
WWW_DIR=${INSTALL_DIR}/monitoring-frontend
AGENT_DIR=${INSTALL_DIR}/monitoring-agent

echo "Stopping components ..."
echo "> monitoring server"
cd ${SERVER_DIR}
./stop.sh

echo "> monitoring frontend"
cd ${WWW_DIR}
./stop.sh

echo "> monitoring agent"
cd ${AGENT_DIR}/dist
./stop.sh

echo "Done"
echo