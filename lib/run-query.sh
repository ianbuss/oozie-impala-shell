#!/bin/bash

export KRB5CCNAME=/tmp/$(uuidgen)
/usr/bin/kinit -k -t user.keytab ${PRINCIPAL}
/usr/bin/impala-shell -k -i ${IMPALAD} -q "${QUERY}"
/usr/bin/kdestroy
/bin/rm -rf ${KRB5CCNAME}
