#!/bin/bash

# Note: There are some errors during the execution but these are expected, actual execution work
set +e

# For soql-lib, delete everything except force-app folder and contents
find frameworks/soql-lib/* -not -path 'frameworks/soql-lib/force-app**' -exec rm -rf {} \;

# For nebula logger, delete everything except core folder and contents
find frameworks/NebulaLogger/nebula-logger/* -not -path 'frameworks/NebulaLogger/nebula-logger/core*' -exec rm -rf {} \;
find frameworks/NebulaLogger/* -not -path 'frameworks/NebulaLogger/nebula-logger*' -exec rm -rf {} \;

# For apex-trigger-actions-framework, delete everything except trigger-actions-framework folder and contents
find frameworks/apex-trigger-actions-framework/* -not -path 'frameworks/apex-trigger-actions-framework/trigger-actions-framework*' -exec rm -rf {} \;

# For apex-httpmock, delete everything except force-app folder and contents
find frameworks/apex-httpmock/* -not -path 'frameworks/apex-httpmock/force-app*' -exec rm -rf {} \;

# For apex-domainbuilder, delete everything except force-app folder and contents
find frameworks/apex-domainbuilder/* -not -path 'frameworks/apex-domainbuilder/force-app*' -exec rm -rf {} \;

# For amoss, delete everything except force-app folder and contents
find frameworks/amoss/* -not -path 'frameworks/amoss/force-app*' -exec rm -rf {} \;

set -e