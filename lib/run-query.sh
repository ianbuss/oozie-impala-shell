#!/bin/bash

/usr/bin/kinit -k -t user.keytab ${PRINCIPAL}
/usr/bin/impala-shell -k -i ${IMPALAD} -q "${QUERY}"
