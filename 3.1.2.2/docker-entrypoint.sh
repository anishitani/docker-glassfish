#!/bin/bash

/opt/glassfish$GF_MAJOR/bin/asadmin start-domain
tail -f $GF_DIR/glassfish/domains/domain1/logs/server.log
